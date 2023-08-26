<?php

namespace sample;

use sample\User;

/**
 * @property int $foo
 * @property string $bar
 *
 * @property-read string $userName
 * @property-read User $user
 */
class Sample
{
  public int $foo;
  public string $bar;
  private User $user;

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
}
