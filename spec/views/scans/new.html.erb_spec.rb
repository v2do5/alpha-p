require 'spec_helper'

describe "scans/new.html.erb" do
  before(:each) do
    assign(:scan, stub_model(Scan,
      :keywords => "MyText",
      :category => "MyText",
      :minimum_price => "MyText",
      :maximum_price => "MyText"
    ).as_new_record)
  end

  it "renders new scan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => scans_path, :method => "post" do
      assert_select "textarea#scan_keywords", :name => "scan[keywords]"
      assert_select "textarea#scan_category", :name => "scan[category]"
      assert_select "textarea#scan_minimum_price", :name => "scan[minimum_price]"
      assert_select "textarea#scan_maximum_price", :name => "scan[maximum_price]"
    end
  end
end
