<div class="view-emp-container">
    <h1 class="page-title"><b>Dashboard</b></h1>
    <div class="detail-container">
        <script>
            // Create chart instance
            var chart = am4core.create("device_types_pie_div", am4charts.PieChart);

            // passing the dashboard data from php to javascript for manipulation and display
            var pie_data = <?php echo json_encode($dashboard_results[0]); ?>;

            console.log($dashboard_results)

            // Pie Chart

            chart.data = pie_data;

            var pieSeries = chart.series.push(new am4charts.PieSeries());
            pieSeries.dataFields.value = "device_count";
            pieSeries.dataFields.category = "dev_model";
        </script>
        <div id="device_types_pie_div" style="width: 100%; height: 400px;"></div>

    </div>

</div>