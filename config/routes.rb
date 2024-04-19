Rails.application.routes.draw do


  get("/square/new", {controller: "omni", action: "new_square"})

  get("/square/results", {controller: "omni", action: "square_results"})

  get("/square_root/new", {controller: "omni", action: "new_square_root"})

  get("/square_root/results", {controller: "omni", action: "square_root_results"})

  get("/payment/new", {controller: "omni", action: "new_payment"})

  get("/payment/results", {controller: "omni", action: "payment_results"})

  get("/random/new", {controller: "omni", action: "new_random"})

  get("/random/results", {controller: "omni", action: "random_results"})

end
