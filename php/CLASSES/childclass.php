<?php

require_once('ClassParent.php');

class store extends ClassParent{

    public function __construct(

    ){
    
    }
    public function add($data){
        foreach($data as $k=>$v){
            $this->$k = pg_escape_string(strip_tags(trim($v)));
        }

        $sql = <<<EOT
            insert into product(
                qty,
                item,
                price
            )values
            (
                $this->qty,
                '$this->item',
                $this->price
            )
EOT;
        return ClassParent::insert($sql);
    }
    public function fetch($data){

        foreach($data as $k=>$v){
            $this->$k = pg_escape_string(strip_tags(trim($v)));
        }
        $where = "";

        if($this->searchString){
            $where .="AND item ILIKE '%$this->searchString%'";
        }
        $sql = <<<EOT
        select id,qty,item,price,status,date::timestamp(0) from product where archived = false AND status = 'pending'
        $where
        order by date DESC
EOT;
        return ClassParent::get($sql);
    }
}

?>