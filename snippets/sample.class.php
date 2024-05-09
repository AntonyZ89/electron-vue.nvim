<?php

namespace sample;

use sample\User;
use sample\Tag;

/**
 * @property int $foo
 * @property string $bar
 *
 * @property-read string $userName
 * @property-read User $user
 * @property-read Tag[] $tags
 */
class Sample
{
  public int $foo;
  public string $bar;
  private User $user;
  private array $tags;

  const CONSTANT = 'SAMPLE';

  /** @param int $baz */
  public function __construct(public int $baz)
  {
  }

  public function getUserName(): string
  {
    return $this->user->name;
  }

  /**
   * @return User
   */
  public function getUser(): User
  {
    return $this->user;
  }

  public function getTags(): Tag
  {
    return $this->tags;
  }

  public function __toString()
  {
    $name = $this->user;

    return "user: {$name}";
  }
}
