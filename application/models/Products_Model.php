<?php

class Products_Model extends CI_Model {

    public function getProductCategories(){
        $sql = "SELECT * FROM category;";
        $query = $this->db->query($sql);

        return $query->result_array();
    }

    public function getProductsOfCategory($category_id){
        $sql = "SELECT * FROM product p
                WHERE p.Category_ID = " . $category_id;
        $query = $this->db->query($sql);

        return $query->result_array();
    }

    public function getCategoryInfo($category_id){
        $sql = "SELECT * FROM category WHERE ID = " . $category_id;
        $query = $this->db->query($sql);

        return $query->result_array()[0];
    }

    public function getProductInfo($product_id){
        $sql = "SELECT * FROM product WHERE ID = " . $product_id;
        $query = $this->db->query($sql);

        return $query->result_array()[0];
    }

    public function getAllStudents(){
        $sql = "SELECT * FROM student;";
        $query = $this->db->query($sql);

        return $query->result_array();
    }

    public function getProductComments($product_id){
        $sql = "SELECT * FROM product_comments pc 
                WHERE pc.product_ID = " . $product_id
                . " ORDER BY pc.comment_date DESC";
        $query = $this->db->query($sql);

        return $query->result_array();
    }

    public function insertComment($params){
        $data = array(
            'product_ID' => $params['product_id'],
            'comment_text' => $params['review_text'],
            'comment_date' => date('Y-m-d H:i')
        );
        $this->db->insert('product_comments', $data);
    }

    public function studentExists($studentIndex){
        $this->db->where('studentIndex', $studentIndex);
        $query = $this->db->get('student');

        if ($query->num_rows() > 0){
            return true;
        }
        else{
            return false;
        }
    }

    public function newStudent($data){
        $id = $this->db->insert_id();
        return $id;
    }

    public function deleteStudent($id){
        $this->db->where('id', $id);
        $this->db->delete('student');

        $this->db->where('student_id', $id);
        $this->db->delete('groups_students');
    }
}