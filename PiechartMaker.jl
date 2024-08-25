using Plots

plot_pie(a, b) = pie(["A", "B"], [a, b])

function update_pie_chart()
    while true
        println("Enter value for A:")
        a = parse(Float64, readline())

        println("Enter value for B:")
        b = parse(Float64, readline())

        p = plot_pie(a, b)
        savefig(p, "pie_chart.png")
        println("Pie chart saved to pie_chart.png.It is in the same dir this file is in.")
    end
end

update_pie_chart()