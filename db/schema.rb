# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_29_082332) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "genetic_modification_methods", force: :cascade do |t|
    t.integer "line_id"
    t.integer "transgenic_construction_type"
    t.integer "mutagenic_construction_type"
    t.string "construction_type_description"
    t.string "molecular_tools"
    t.string "mutation_type"
    t.string "vector_name"
    t.string "vector_description"
    t.string "reagent_and_protocol"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "groups", force: :cascade do |t|
    t.text "group_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "group_name"
  end

  create_table "groups_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "group_id", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "image"
    t.string "image_name"
    t.string "image_legend"
    t.date "image_date"
    t.string "microscopy_technique"
    t.string "lifecycle_stage"
    t.string "tissu_localization"
    t.string "cellular_localization"
    t.string "person_who_takes_image"
    t.string "objective_used"
    t.integer "line_id"
    t.integer "phenotype_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lines", force: :cascade do |t|
    t.string "line_name"
    t.string "synonym_line_name"
    t.string "line_type"
    t.string "person_in_charge"
    t.string "breeding_type"
    t.integer "generation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "zygosity"
    t.integer "phenotype_id"
    t.integer "wild_type_background_id"
    t.integer "genetic_modification_method_id"
    t.integer "line_id"
    t.integer "user_id"
    t.integer "group_id"
  end

  create_table "lines_publications", id: false, force: :cascade do |t|
    t.integer "line_id", null: false
    t.integer "publication_id", null: false
  end

  create_table "molecular_data", force: :cascade do |t|
    t.string "gene_name"
    t.string "genbank_gene_accession_number"
    t.string "ensembl_gene_accession_number"
    t.string "genome_version_accession_number"
    t.string "gene_sequence"
    t.string "chromosome_number"
    t.string "gene_promoter"
    t.string "NvERTx_id"
    t.string "locus_insertion"
    t.string "mutated_region"
    t.integer "genetic_modification_method_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "phenotypes", force: :cascade do |t|
    t.float "embryo_letality"
    t.boolean "larva_swimming_perturbation"
    t.float "larva_letality"
    t.boolean "metamorphosis_perturbation"
    t.string "post_metamorphosis_growth"
    t.string "regeneration"
    t.float "adult_letality"
    t.float "adult_fecondity"
    t.string "other_phenotype_description"
    t.string "tissu_localization"
    t.string "cell_localization"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "publications", force: :cascade do |t|
    t.string "publication_name"
    t.date "publication_date"
    t.string "authors"
    t.string "pubmed_link"
    t.string "doi_link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string "staff_name"
    t.string "staff_header"
    t.string "staff_adress"
    t.string "institut_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "fieldname"
    t.string "country"
    t.string "city"
    t.string "postalcode"
    t.integer "staff_type"
  end

  create_table "staffs_users", id: false, force: :cascade do |t|
    t.integer "staff_id", null: false
    t.integer "user_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wild_type_backgrounds", force: :cascade do |t|
    t.text "sampling_conditions"
    t.string "sampling_geographical_zone"
    t.text "supplementary_information"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
