### A Pluto.jl notebook ###
# v0.12.4

using Markdown
using InteractiveUtils

# ╔═╡ d006b66c-0ea6-11eb-0e41-a37bc0f2689e
using Pkg

# ╔═╡ f33f0d64-0eb0-11eb-13ce-5dcce414b595
using TextAnalysis

# ╔═╡ 761f51f0-0eb7-11eb-256e-c92b976c2337
using Plots

# ╔═╡ b1cea02c-0ebf-11eb-0bab-4747d1edf62d
using Genie

# ╔═╡ acc93070-0ec0-11eb-1cff-e337990c9b6b
using HTTP

# ╔═╡ d849e946-0ec1-11eb-1606-25ff1efe4233
using LightGraphs

# ╔═╡ 14f119cc-0ec3-11eb-3bca-994fb5f6b123
using GraphPlot

# ╔═╡ febda3f6-0ec1-11eb-02d1-05a4caaddc82
using SimpleWeightedGraphs

# ╔═╡ ab229316-0ec4-11eb-0b00-a756c44cd0f2
using Franklin

# ╔═╡ 53a6a35a-0ec9-11eb-3aec-e152cac5c4e4
using Images, FileIO

# ╔═╡ 378c94c0-0e32-11eb-2781-898c22ee1f9a
html"<button onclick=present()>Present</button>"

# ╔═╡ 13eb6dec-0e33-11eb-3895-0925c4c233b0
md"# Introduction to Julia"

# ╔═╡ ada1bad6-0e9c-11eb-060b-13019859ffef
md"""# The problem

- specialists work on algorithms (python, r, matlab)

- programmers make it production ready (c++, c#, java)

- deploy
"""

# ╔═╡ 48c5b260-0e9d-11eb-16b9-6fe39c17024a
md"""# The solution

- specialists and programmers work collaborate (julia)
- deploy

"""

# ╔═╡ 4f6b8102-0e9e-11eb-3af1-d36898b19ae5
md"""# Come for the syntax, stay for the speed"""

# ╔═╡ f6e47e10-0ea4-11eb-13c6-8dc21748213a
md"""# Flux.jl

- julia replacement for pytorch, tensorflow
- examples available at https://github.com/FluxML/model-zoo
"""

# ╔═╡ b5cbc9a8-0ea9-11eb-30de-9b7b32ac35a4
Pkg.activate(".")

# ╔═╡ d76b1ba2-0ea9-11eb-19b4-af7445adb3e2
Pkg.instantiate()

# ╔═╡ e014f00c-0ea9-11eb-3cfe-15ec3e904b16
md"""
Using Flux is as simple as doing:

```jl
] add Flux

using Flux
```
"""

# ╔═╡ ff6a8e58-0eae-11eb-14cd-85194adc6cb3
md"""# TextAnalysis.jl
"""

# ╔═╡ 27f8d1a2-0eb1-11eb-14db-955bc45260cb
str = "this is a new string"

# ╔═╡ 7156320e-0eb1-11eb-34a7-3bcd88f43ba7
sd = StringDocument(str)

# ╔═╡ c4a6a524-0eb1-11eb-079e-d5d65072a92b
tokens(sd)

# ╔═╡ cc093e80-0eb1-11eb-1202-0510253dadc2
ngrams(sd)

# ╔═╡ d4563f52-0eb1-11eb-1baf-f591153c1edb
ngrams(sd, 2)

# ╔═╡ fb74f386-0eb5-11eb-3e63-099045ccbd8c
md"""# """

# ╔═╡ fb81ac10-0eb1-11eb-26a4-e9eb81a04204
str_2 = "this is a bad string !( some thing here*^"

# ╔═╡ 175ace94-0eb2-11eb-134f-6d7b29122634
sd_2 = StringDocument(str_2)

# ╔═╡ af7469a6-0eb2-11eb-017c-51456043a04f
prepare!(sd_2, strip_punctuation)

# ╔═╡ b9a6ccac-0eb2-11eb-255f-fdf6a9d3a6fa
text(sd_2)

# ╔═╡ b725994a-0eb2-11eb-1a93-2126fe4ca0b1
md"""# Plots.jl"""

# ╔═╡ 7abc8296-0eb1-11eb-2143-299bb5273810
x = 1:10; y = rand(10)

# ╔═╡ f5600526-0eba-11eb-243f-ffe32c8a4c1e
plot(x, y)

# ╔═╡ f558d724-0ef1-11eb-3777-3f417a72b58d
md"# "

# ╔═╡ fb6f9b84-0eba-11eb-07c0-0d85d8377eb5
plot(Plots.fakedata(50, 5), w = 2)

# ╔═╡ a9151da2-0ebb-11eb-238b-4de8054a23c9
theme(:solarized)

# ╔═╡ 335968c6-0ebc-11eb-310f-31a13429441d
md"""# DifferentialEquations.jl

- solve ODEs through julia!
- one of the most popular julia packages
"""

# ╔═╡ 749ac066-0ebf-11eb-3f96-5d670cf38d3a
md"""# Genie.jl

- full-stack mvc web framework in julia
"""

# ╔═╡ c5d3aa24-0ebf-11eb-3947-054ca8659285
route("/hello") do
	"Hello, world!"
end

# ╔═╡ 92a9a896-0ec0-11eb-3bfb-6178d10f49c0
up()

# ╔═╡ b2478a42-0ec0-11eb-2f93-774dd80dc210
HTTP.get("http://localhost:8000/hello")

# ╔═╡ c8286982-0ec0-11eb-32ff-9183ffab6633
down()

# ╔═╡ e8f7a2b8-0ec0-11eb-1136-f520768cc6e8
md"""# LightGraphs.jl

- provides a framework for graph framrworks like SimpleWeightedGraphs.jl
"""

# ╔═╡ e54f8498-0ec1-11eb-1756-6f29b7d0897e
g_1 = path_graph(6)

# ╔═╡ ed0f5cfc-0ec2-11eb-2e68-71834cf8fe1d
gplot(g_1)

# ╔═╡ 065fc5a8-0ef2-11eb-326d-a706ed46bff2
md"# "

# ╔═╡ 0758d3f0-0ec2-11eb-1cce-dd57ef093259
g_2 = SimpleWeightedGraph(10)

# ╔═╡ 27cd3d5a-0ec3-11eb-0830-8f08536cd744
gplot(g_2)

# ╔═╡ 304922fa-0ec3-11eb-04c5-23b1e8f04957
md"""# Documenter.jl

- generate documentation for your julia packages quickly

```
using Documenter, Example

makedocs(sitename="My documentation")
```
"""

# ╔═╡ a2f8da16-0ec3-11eb-2d75-2d996650a7a8
md"""# Franklin.jl

- static site generator in julia
"""

# ╔═╡ be3d1dae-0ec4-11eb-3712-1f370b47457b
newsite("My new site", template="pure-sm")

# ╔═╡ 486c8028-0ec5-11eb-0ee3-d16eaf57ae77
readdir()

# ╔═╡ bcb6705c-0ef1-11eb-1ab2-93c4095bdd37
md"""# Pluto.jl

### This presentation is made with Pluto.jl!
"""

# ╔═╡ e66f3dc4-0ec5-11eb-18bd-05905909377a
md"""# Hush, there are a lot of these

- checkout https://juliaobserver.com/packages
- or just do a quick google or github search
- join slack and ask on #helpdesk
- everyone is very active and ready to help
"""

# ╔═╡ 20bbfee0-0ec6-11eb-2503-7d18df89f6d0
md"""# Julia, is it better than python?

- judge it yourselves
- here are some stats for you guys
"""

# ╔═╡ a3992086-0ec6-11eb-3e22-3745ab03e956
load("./images/picture_1.png")

# ╔═╡ 4926e5d8-0ef2-11eb-2550-bd608cb98950
md"# "

# ╔═╡ aab7782c-0ecb-11eb-2d06-8b1ee9d60b5a
load("./images/picture_2.png")

# ╔═╡ 3554232c-0ecc-11eb-1929-47354e855959
md"""# """

# ╔═╡ 220ab8bc-0ecc-11eb-3c41-33b1e564486a
load("./images/picture_3.png")

# ╔═╡ 53cc2dd8-0ef2-11eb-2b79-8572c61d90e9
md"# "

# ╔═╡ 24f89fee-0ecc-11eb-1525-cddda435e969
load("./images/picture_4.png")

# ╔═╡ 4225747a-0ecc-11eb-19fc-61c792a7b733
md"""# """

# ╔═╡ 28926e96-0ecc-11eb-215c-61b582c64036
load("./images/picture_5.png")

# ╔═╡ 2baf6408-0ecc-11eb-22e1-d1aed1102d96
md"""# Final words

- once should def look at julia as an alternative to their tasks
- it has come very reliable and fast and is expected to grow a lot more in future
- is a perfect solution if you work in data science field
- has a lot more than what I summarized in these very few slides
- enjoy and hope you liked this mini presentation
"""

# ╔═╡ 12b49df0-0ecd-11eb-0ad7-592765b2578b
md"""# Any questions?

ps: please don't ask me tough ones :P
"""

# ╔═╡ 26aa052c-0ecd-11eb-1df6-db2143e34471
println("thank you!")

# ╔═╡ Cell order:
# ╟─378c94c0-0e32-11eb-2781-898c22ee1f9a
# ╟─13eb6dec-0e33-11eb-3895-0925c4c233b0
# ╟─ada1bad6-0e9c-11eb-060b-13019859ffef
# ╟─48c5b260-0e9d-11eb-16b9-6fe39c17024a
# ╟─4f6b8102-0e9e-11eb-3af1-d36898b19ae5
# ╟─f6e47e10-0ea4-11eb-13c6-8dc21748213a
# ╠═d006b66c-0ea6-11eb-0e41-a37bc0f2689e
# ╠═b5cbc9a8-0ea9-11eb-30de-9b7b32ac35a4
# ╠═d76b1ba2-0ea9-11eb-19b4-af7445adb3e2
# ╟─e014f00c-0ea9-11eb-3cfe-15ec3e904b16
# ╟─ff6a8e58-0eae-11eb-14cd-85194adc6cb3
# ╠═f33f0d64-0eb0-11eb-13ce-5dcce414b595
# ╠═27f8d1a2-0eb1-11eb-14db-955bc45260cb
# ╠═7156320e-0eb1-11eb-34a7-3bcd88f43ba7
# ╠═c4a6a524-0eb1-11eb-079e-d5d65072a92b
# ╠═cc093e80-0eb1-11eb-1202-0510253dadc2
# ╠═d4563f52-0eb1-11eb-1baf-f591153c1edb
# ╟─fb74f386-0eb5-11eb-3e63-099045ccbd8c
# ╠═fb81ac10-0eb1-11eb-26a4-e9eb81a04204
# ╠═175ace94-0eb2-11eb-134f-6d7b29122634
# ╠═af7469a6-0eb2-11eb-017c-51456043a04f
# ╠═b9a6ccac-0eb2-11eb-255f-fdf6a9d3a6fa
# ╟─b725994a-0eb2-11eb-1a93-2126fe4ca0b1
# ╠═761f51f0-0eb7-11eb-256e-c92b976c2337
# ╠═7abc8296-0eb1-11eb-2143-299bb5273810
# ╠═f5600526-0eba-11eb-243f-ffe32c8a4c1e
# ╟─f558d724-0ef1-11eb-3777-3f417a72b58d
# ╠═fb6f9b84-0eba-11eb-07c0-0d85d8377eb5
# ╠═a9151da2-0ebb-11eb-238b-4de8054a23c9
# ╟─335968c6-0ebc-11eb-310f-31a13429441d
# ╟─749ac066-0ebf-11eb-3f96-5d670cf38d3a
# ╠═b1cea02c-0ebf-11eb-0bab-4747d1edf62d
# ╠═c5d3aa24-0ebf-11eb-3947-054ca8659285
# ╠═92a9a896-0ec0-11eb-3bfb-6178d10f49c0
# ╠═acc93070-0ec0-11eb-1cff-e337990c9b6b
# ╠═b2478a42-0ec0-11eb-2f93-774dd80dc210
# ╠═c8286982-0ec0-11eb-32ff-9183ffab6633
# ╟─e8f7a2b8-0ec0-11eb-1136-f520768cc6e8
# ╠═d849e946-0ec1-11eb-1606-25ff1efe4233
# ╠═e54f8498-0ec1-11eb-1756-6f29b7d0897e
# ╠═14f119cc-0ec3-11eb-3bca-994fb5f6b123
# ╠═ed0f5cfc-0ec2-11eb-2e68-71834cf8fe1d
# ╟─065fc5a8-0ef2-11eb-326d-a706ed46bff2
# ╠═febda3f6-0ec1-11eb-02d1-05a4caaddc82
# ╠═0758d3f0-0ec2-11eb-1cce-dd57ef093259
# ╠═27cd3d5a-0ec3-11eb-0830-8f08536cd744
# ╟─304922fa-0ec3-11eb-04c5-23b1e8f04957
# ╟─a2f8da16-0ec3-11eb-2d75-2d996650a7a8
# ╠═ab229316-0ec4-11eb-0b00-a756c44cd0f2
# ╠═be3d1dae-0ec4-11eb-3712-1f370b47457b
# ╠═486c8028-0ec5-11eb-0ee3-d16eaf57ae77
# ╟─bcb6705c-0ef1-11eb-1ab2-93c4095bdd37
# ╟─e66f3dc4-0ec5-11eb-18bd-05905909377a
# ╟─20bbfee0-0ec6-11eb-2503-7d18df89f6d0
# ╟─53a6a35a-0ec9-11eb-3aec-e152cac5c4e4
# ╟─a3992086-0ec6-11eb-3e22-3745ab03e956
# ╟─4926e5d8-0ef2-11eb-2550-bd608cb98950
# ╟─aab7782c-0ecb-11eb-2d06-8b1ee9d60b5a
# ╟─3554232c-0ecc-11eb-1929-47354e855959
# ╟─220ab8bc-0ecc-11eb-3c41-33b1e564486a
# ╟─53cc2dd8-0ef2-11eb-2b79-8572c61d90e9
# ╟─24f89fee-0ecc-11eb-1525-cddda435e969
# ╟─4225747a-0ecc-11eb-19fc-61c792a7b733
# ╟─28926e96-0ecc-11eb-215c-61b582c64036
# ╟─2baf6408-0ecc-11eb-22e1-d1aed1102d96
# ╟─12b49df0-0ecd-11eb-0ad7-592765b2578b
# ╠═26aa052c-0ecd-11eb-1df6-db2143e34471
