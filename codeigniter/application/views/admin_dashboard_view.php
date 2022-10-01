<div class="view-emp-container">
    <h1 class="page-title"><b>View Employee Details</b></h1>
    <div class="detail-container">
        <script>
            // Create chart instance
            var chart = am4core.create("chartdiv", am4charts.PieChart);

            // passing the dashboard data from php to javascript for manipulation and display
            var dashboard_data = <?php echo json_encode($dashboard_results); ?>;
            console.log(dashboard_data)
            chart.data = dashboard_data;

            var pieSeries = chart.series.push(new am4charts.PieSeries());
            pieSeries.dataFields.value = "device_count";
            pieSeries.dataFields.category = "dev_model";
        </script>
        <div id="chartdiv" style="width: 100%; height: 400px;"></div>
    </div>
</div>