<?php

namespace App\components;

class ViewPage
{

    public function render($path, $title, $data = null)
    {
        require ROOT . "/views/layouts/header.php"; //render head
        require ROOT . "/views/$path/$path.html"; //render body
        require ROOT . "/views/layouts/footer.php"; //render footer
    }
}