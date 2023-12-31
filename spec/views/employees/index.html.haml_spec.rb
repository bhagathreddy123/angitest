require 'rails_helper'

RSpec.describe "employees/index", type: :view do
  before(:each) do
    assign(:employees, [
      Employee.create!(
        name: "Name",
        email: "Email",
        contact: "Contact",
        address: "Address"
      ),
      Employee.create!(
        name: "Name",
        email: "Email",
        contact: "Contact",
        address: "Address"
      )
    ])
  end

  it "renders a list of employees" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Contact".to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
  end
end
