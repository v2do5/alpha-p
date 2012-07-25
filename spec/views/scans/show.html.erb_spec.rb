require 'spec_helper'

describe "scans/show.html.erb" do
  before(:each) do
    @scan = assign(:scan, stub_model(Scan,
      :keywords => "MyText",
      :category => "MyText",
      :minimum_price => "MyText",
      :maximum_price => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
