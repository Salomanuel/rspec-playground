describe "an example of the error matchers" do
  it "should show how the error matchers work" do
    expect { 1/0 }.to raise_error(ZeroDivisionError)
    expect { 1/0 }.to raise_error("divided by 0")
    expect { 1/0 }.to raise_error("divided by 0", ZeroDivisionError)
  end
end
