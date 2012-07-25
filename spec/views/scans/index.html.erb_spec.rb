require 'spec_helper'

describe "scans/index.html.erb" do
  before(:each) do
    assign(:scans, [
      stub_model(Scan,
        :keywords => "MyText",
        :category => "MyText",
        :minimum_price => "MyText",
        :maximum_price => "MyText"
      ),
      stub_model(Scan,
        :keywords => "MyText",
        :category => "MyText",
        :minimum_price => "MyText",
        :maximum_price => "MyText"
      )
    ])
  end

  it "renders a list of scans" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
