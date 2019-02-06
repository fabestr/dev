<?php

class BookingModel {

    public function bookingDate($post,$user) {

        $dataBook = new Database();
        $book = $dataBook->executeSql(
            'INSERT INTO
            Booking(BookingDate, BookingTime, NumberOfSeats, User_Id, CreationTimestamp) VALUES 
            (?,?,?,?,NOW())',
            [
                $post['bookingYear'].'-'.$post['bookingMonth'].'-'.$post['bookingDay'],
                $post['bookingHour'].':'.$post['bookingMinute'],
                $post['numberOfSeat'],
                $user['Id']
            ]
            );
    }
}