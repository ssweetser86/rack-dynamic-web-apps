class Application

  def rand
    Kernel.rand(1..20)
  end

  def call(env)
    resp = Rack::Response.new
    n1, n2, n3 = rand, rand, rand

    if n1 == n2 && n2 == n3
      resp.write "#{n1} | #{n2} | #{n3}\n\nYou Win"
    else
      resp.write "#{n1} | #{n2} | #{n3}\n\nYou Lose"
    end
    
    resp.finish
  end

end
