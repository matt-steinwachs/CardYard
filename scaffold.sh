#!/bin/bash

rails generate scaffold User name:string admin:boolean
rails generate scaffold Game user:belongs_to type:string game_data:text
rails generate scaffold Zone user:belongs_to game:belongs_to zone_data:text
rails generate scaffold UserGame user:belongs_to game:belongs_to
rails generate scaffold Deck user:belongs_to name:string deck_data:text