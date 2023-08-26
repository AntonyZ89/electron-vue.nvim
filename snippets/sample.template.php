<?php

/**
 * @var sample\Sample $sample
 * @var sample\User[] $users
 */

?>

<div>
  <?php echo $sample->foo; ?>

  <?php echo $sample->bar; ?>

  <?= $sample->user->name; ?>

  <?php if ($sample->foo === 1) : ?>
    <h1>Hello World</h1>
  <?php endif; ?>

  <div class="p-3 border rounded">
    <h1 class="text-center">Users</h1>

    <?php foreach ($users as $key => $user) : ?>
      <div>
        <?= "[{$key}] - {$user->name}" ?>
      </div>
    <?php endforeach; ?>
  </div>
</div>
