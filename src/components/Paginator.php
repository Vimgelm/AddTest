<?php


namespace App\components;


class Paginator
{

    public function makePage($curent_page, $left_limit, $right_limit, $last_page)
    {
        $page_arr = array();

            // for number in middle
            if ($curent_page >= $left_limit && $curent_page <= ($last_page - $right_limit)) {
                for ($i = $curent_page - $left_limit; $i <= $curent_page + $right_limit; $i++) {
                    $page_arr[] = $i;
                }
            } elseif ($curent_page < $left_limit) { //for number less left_limit
                for ($i = 1; $i <= $curent_page + $right_limit; $i++) {
                    $page_arr[] = $i;
                }
            }elseif ($curent_page >= ($last_page - $right_limit)){
                for ($i = $curent_page - $left_limit; $i <= $last_page; $i++) {
                    $page_arr[] = $i;
                }
            }

        return $page_arr;
    }
}