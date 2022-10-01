<div class="view-emp-container">
    <h1 class="page-title"><b>Dashboard</b></h1>
    <div class="detail-container">
        <script>
            // Create chart instance
            var chart = am4core.create("device_types_pie_div", am4charts.PieChart);

            // passing the dashboard data from php to javascript for manipulation and display
            var pie_data = <?php echo json_encode($dashboard_results[0]); ?>;

            console.log(dashboard_data)

            // Pie Chart

            chart.data = pie_data;

            var pieSeries = chart.series.push(new am4charts.PieSeries());
            pieSeries.dataFields.value = "device_count";
            pieSeries.dataFields.category = "dev_model";
        </script>
        <div id="device_types_pie_div" style="width: 100%; height: 400px;"></div>
        <div id="device_in_div">Device In: <?= json_encode($dashboard_results[1])[0]->device_count; ?></div>
        <div id="device_out_div">Device Out: <?= json_encode($dashboard_results[2])[0]->device_count; ?></div>
        <div id="reserved_div">Reserved: <?= json_encode($dashboard_results[3])[0]->device_count; ?></div>
        <div id="broken_div">Broken: <?= json_encode($dashboard_results[4])[0]->device_count; ?></div>
        <div id="maintenance_div">In Maintenance: <?= json_encode($dashboard_results[5])[0]->device_count; ?></div>
    </div>

</div>