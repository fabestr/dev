<?php

class MealModel {


    public function AllMeal() {
        $dataMeal = new Database();
        $meals = $dataMeal->query (
                                'SELECT
                                *
                                FROM
                                Meal', []
                            );
        return $meals;
        
    }


    public function getIdMeal($id) {

        $dataMeal = new Database();
        $meal = $dataMeal->queryOne(
            'SELECT
            *
            FROM
            Meal
            WHERE
            Id = ?',
            [$id]
        );
        return $meal;

    }
    
    
}
















?>