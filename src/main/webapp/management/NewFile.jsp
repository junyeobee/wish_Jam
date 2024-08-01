<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bar Graph</title>
<style>
	.chart {
	    display: flex;
	    align-items: flex-end;
	    border-left: 2px solid #000;
	    border-bottom: 2px solid #000;
	    padding: 10px;
	    height: 400px;
	    width: 600px;
	    background-color: #f0f0f0;
	}
	.bar {
	    width: 50px;
	    margin: 0 10px;
	    background-color: blue;
	    text-align: center;
	    color: white;
	    font-size: 14px;
	    box-sizing: border-box;
	}
	.bar-label {
	    margin-top: 5px;
	}
</style>
</head>
<body>
	<div id="barChart" class="chart"></div>
	<script src="script.js"></script>
</body>
</html>

