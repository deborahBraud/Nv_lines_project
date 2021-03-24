require "test_helper"

class GeneticModificationMethodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @genetic_modification_method = genetic_modification_methods(:one)
  end

  test "should get index" do
    get genetic_modification_methods_url
    assert_response :success
  end

  test "should get new" do
    get new_genetic_modification_method_url
    assert_response :success
  end

  test "should create genetic_modification_method" do
    assert_difference('GeneticModificationMethod.count') do
      post genetic_modification_methods_url, params: { genetic_modification_method: { construction_type_description: @genetic_modification_method.construction_type_description, line_id: @genetic_modification_method.line_id, molecular_tools: @genetic_modification_method.molecular_tools, mutagenic_construction_type: @genetic_modification_method.mutagenic_construction_type, mutation_type: @genetic_modification_method.mutation_type, reagent_and_protocol: @genetic_modification_method.reagent_and_protocol, transgenic_construction_type: @genetic_modification_method.transgenic_construction_type, vector_description: @genetic_modification_method.vector_description, vector_name: @genetic_modification_method.vector_name } }
    end

    assert_redirected_to genetic_modification_method_url(GeneticModificationMethod.last)
  end

  test "should show genetic_modification_method" do
    get genetic_modification_method_url(@genetic_modification_method)
    assert_response :success
  end

  test "should get edit" do
    get edit_genetic_modification_method_url(@genetic_modification_method)
    assert_response :success
  end

  test "should update genetic_modification_method" do
    patch genetic_modification_method_url(@genetic_modification_method), params: { genetic_modification_method: { construction_type_description: @genetic_modification_method.construction_type_description, line_id: @genetic_modification_method.line_id, molecular_tools: @genetic_modification_method.molecular_tools, mutagenic_construction_type: @genetic_modification_method.mutagenic_construction_type, mutation_type: @genetic_modification_method.mutation_type, reagent_and_protocol: @genetic_modification_method.reagent_and_protocol, transgenic_construction_type: @genetic_modification_method.transgenic_construction_type, vector_description: @genetic_modification_method.vector_description, vector_name: @genetic_modification_method.vector_name } }
    assert_redirected_to genetic_modification_method_url(@genetic_modification_method)
  end

  test "should destroy genetic_modification_method" do
    assert_difference('GeneticModificationMethod.count', -1) do
      delete genetic_modification_method_url(@genetic_modification_method)
    end

    assert_redirected_to genetic_modification_methods_url
  end
end
