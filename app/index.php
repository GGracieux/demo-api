<?php

header('Content-Type: application/json');

echo json_encode([
    "name" => "demo-api",
    "version" => "0.1"
]);