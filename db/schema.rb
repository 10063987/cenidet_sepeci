# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171123200904) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classrooms", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "congress_memories", force: :cascade do |t|
    t.string "memory_title"
    t.integer "start_page"
    t.integer "end_page"
    t.date "year"
    t.string "evidence"
    t.bigint "message_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["message_id"], name: "index_congress_memories_on_message_id"
  end

  create_table "congress_memory_has_students", force: :cascade do |t|
    t.string "status"
    t.bigint "congress_memory_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["congress_memory_id"], name: "index_congress_memory_has_students_on_congress_memory_id"
    t.index ["student_id"], name: "index_congress_memory_has_students_on_student_id"
  end

  create_table "congress_memory_has_teachers", force: :cascade do |t|
    t.string "status"
    t.bigint "congress_memory_id"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["congress_memory_id"], name: "index_congress_memory_has_teachers_on_congress_memory_id"
    t.index ["teacher_id"], name: "index_congress_memory_has_teachers_on_teacher_id"
  end

  create_table "course_has_students", force: :cascade do |t|
    t.string "status"
    t.bigint "course_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_has_students_on_course_id"
    t.index ["student_id"], name: "index_course_has_students_on_student_id"
  end

  create_table "course_has_teachers", force: :cascade do |t|
    t.string "status"
    t.bigint "course_id"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_has_teachers_on_course_id"
    t.index ["teacher_id"], name: "index_course_has_teachers_on_teacher_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "course_name"
    t.string "institution_name"
    t.string "course_location"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "course_type"
    t.string "evidence"
    t.bigint "message_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["message_id"], name: "index_courses_on_message_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.string "department_manager"
    t.bigint "institution_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["institution_id"], name: "index_departments_on_institution_id"
  end

  create_table "distinctive_sign_has_students", force: :cascade do |t|
    t.string "status"
    t.bigint "distinctive_sign_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["distinctive_sign_id"], name: "index_distinctive_sign_has_students_on_distinctive_sign_id"
    t.index ["student_id"], name: "index_distinctive_sign_has_students_on_student_id"
  end

  create_table "distinctive_sign_has_teachers", force: :cascade do |t|
    t.string "status"
    t.bigint "distinctive_sign_id"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["distinctive_sign_id"], name: "index_distinctive_sign_has_teachers_on_distinctive_sign_id"
    t.index ["teacher_id"], name: "index_distinctive_sign_has_teachers_on_teacher_id"
  end

  create_table "distinctive_signs", force: :cascade do |t|
    t.string "legal_concept"
    t.integer "file_number"
    t.datetime "presentation_date"
    t.string "denomination_title"
    t.integer "registration_number"
    t.string "evidence"
    t.bigint "message_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["message_id"], name: "index_distinctive_signs_on_message_id"
  end

  create_table "event_assistance_has_students", force: :cascade do |t|
    t.string "status"
    t.bigint "event_assistance_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_assistance_id"], name: "index_event_assistance_has_students_on_event_assistance_id"
    t.index ["student_id"], name: "index_event_assistance_has_students_on_student_id"
  end

  create_table "event_assistance_has_teachers", force: :cascade do |t|
    t.string "status"
    t.bigint "event_assistance_id"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_assistance_id"], name: "index_event_assistance_has_teachers_on_event_assistance_id"
    t.index ["teacher_id"], name: "index_event_assistance_has_teachers_on_teacher_id"
  end

  create_table "event_assistances", force: :cascade do |t|
    t.string "name"
    t.string "event_location"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "course_type"
    t.string "participation_type"
    t.string "event_type"
    t.string "evidence"
    t.bigint "message_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["message_id"], name: "index_event_assistances_on_message_id"
  end

  create_table "generation_has_students", force: :cascade do |t|
    t.string "status"
    t.bigint "generation_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["generation_id"], name: "index_generation_has_students_on_generation_id"
    t.index ["student_id"], name: "index_generation_has_students_on_student_id"
  end

  create_table "generation_has_teachers", force: :cascade do |t|
    t.string "status"
    t.bigint "generation_id"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["generation_id"], name: "index_generation_has_teachers_on_generation_id"
    t.index ["teacher_id"], name: "index_generation_has_teachers_on_teacher_id"
  end

  create_table "generations", force: :cascade do |t|
    t.date "start_year"
    t.date "end_year"
    t.string "start_period"
    t.string "end_period"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "institutions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invention_has_students", force: :cascade do |t|
    t.string "status"
    t.bigint "invention_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invention_id"], name: "index_invention_has_students_on_invention_id"
    t.index ["student_id"], name: "index_invention_has_students_on_student_id"
  end

  create_table "invention_has_teachers", force: :cascade do |t|
    t.string "status"
    t.bigint "invention_id"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invention_id"], name: "index_invention_has_teachers_on_invention_id"
    t.index ["teacher_id"], name: "index_invention_has_teachers_on_teacher_id"
  end

  create_table "inventions", force: :cascade do |t|
    t.string "legal_concept"
    t.integer "file_number"
    t.datetime "presentation_date"
    t.string "invetion_title"
    t.string "inventor"
    t.integer "registration_number"
    t.string "evidence"
    t.bigint "message_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["message_id"], name: "index_inventions_on_message_id"
  end

  create_table "liberations", force: :cascade do |t|
    t.string "photo"
    t.string "cvu"
    t.string "encuesta"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_liberations_on_student_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "title"
    t.string "congress"
    t.string "comment"
    t.bigint "teacher_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_messages_on_student_id"
    t.index ["teacher_id"], name: "index_messages_on_teacher_id"
  end

  create_table "origins", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pub_art_has_students", force: :cascade do |t|
    t.string "status"
    t.bigint "pub_art_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pub_art_id"], name: "index_pub_art_has_students_on_pub_art_id"
    t.index ["student_id"], name: "index_pub_art_has_students_on_student_id"
  end

  create_table "pub_art_has_teachers", force: :cascade do |t|
    t.string "status"
    t.bigint "pub_art_id"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pub_art_id"], name: "index_pub_art_has_teachers_on_pub_art_id"
    t.index ["teacher_id"], name: "index_pub_art_has_teachers_on_teacher_id"
  end

  create_table "pub_art_types", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pub_arts", force: :cascade do |t|
    t.string "issn_printed"
    t.string "issn_electronic"
    t.string "magazine_name"
    t.string "article_title"
    t.string "grade"
    t.datetime "publication_date"
    t.string "index"
    t.integer "magazine_number"
    t.integer "magazine_volume"
    t.date "year"
    t.integer "start_page"
    t.integer "end_page"
    t.bigint "pub_art_type_id"
    t.string "evidence"
    t.string "acceptance_letter"
    t.bigint "message_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["message_id"], name: "index_pub_arts_on_message_id"
    t.index ["pub_art_type_id"], name: "index_pub_arts_on_pub_art_type_id"
  end

  create_table "pub_chapter_has_students", force: :cascade do |t|
    t.string "status"
    t.bigint "pub_chapter_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pub_chapter_id"], name: "index_pub_chapter_has_students_on_pub_chapter_id"
    t.index ["student_id"], name: "index_pub_chapter_has_students_on_student_id"
  end

  create_table "pub_chapter_has_teachers", force: :cascade do |t|
    t.string "status"
    t.bigint "pub_chapter_id"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pub_chapter_id"], name: "index_pub_chapter_has_teachers_on_pub_chapter_id"
    t.index ["teacher_id"], name: "index_pub_chapter_has_teachers_on_teacher_id"
  end

  create_table "pub_chapters", force: :cascade do |t|
    t.string "isbn"
    t.string "chapter_title"
    t.string "publisher"
    t.integer "edition_number"
    t.integer "chapter_number"
    t.integer "start_page"
    t.integer "end_page"
    t.string "evidence"
    t.bigint "message_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["message_id"], name: "index_pub_chapters_on_message_id"
  end

  create_table "registries", force: :cascade do |t|
    t.integer "registration_number"
    t.integer "issue_number"
    t.bigint "teacher_id"
    t.string "city"
    t.datetime "date"
    t.string "reason"
    t.string "gas"
    t.string "toll_booth"
    t.string "travel_expenses"
    t.string "land_passage"
    t.string "air_ticket"
    t.string "exit_transportation"
    t.string "return_transportation"
    t.string "requisition_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_registries_on_teacher_id"
  end

  create_table "research_lines", force: :cascade do |t|
    t.string "name"
    t.string "line_coordinator"
    t.bigint "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_research_lines_on_department_id"
  end

  create_table "semesters", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "set_aside_classrooms", force: :cascade do |t|
    t.bigint "classroom_id"
    t.bigint "tutorial_committee_id"
    t.bigint "student_id"
    t.bigint "teacher_type_id"
    t.datetime "period"
    t.datetime "date"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classroom_id"], name: "index_set_aside_classrooms_on_classroom_id"
    t.index ["student_id"], name: "index_set_aside_classrooms_on_student_id"
    t.index ["teacher_type_id"], name: "index_set_aside_classrooms_on_teacher_type_id"
    t.index ["tutorial_committee_id"], name: "index_set_aside_classrooms_on_tutorial_committee_id"
  end

  create_table "stay_has_students", force: :cascade do |t|
    t.string "status"
    t.bigint "stay_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stay_id"], name: "index_stay_has_students_on_stay_id"
    t.index ["student_id"], name: "index_stay_has_students_on_student_id"
  end

  create_table "stay_has_teachers", force: :cascade do |t|
    t.string "status"
    t.bigint "stay_id"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stay_id"], name: "index_stay_has_teachers_on_stay_id"
    t.index ["teacher_id"], name: "index_stay_has_teachers_on_teacher_id"
  end

  create_table "stays", force: :cascade do |t|
    t.string "institution_name"
    t.string "location"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "host_teacher"
    t.string "stay_type"
    t.string "evidence"
    t.bigint "message_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["message_id"], name: "index_stays_on_message_id"
  end

  create_table "student_has_semesters", force: :cascade do |t|
    t.string "concluido"
    t.bigint "student_id"
    t.bigint "semester_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["semester_id"], name: "index_student_has_semesters_on_semester_id"
    t.index ["student_id"], name: "index_student_has_semesters_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "mlast_name"
    t.string "phone"
    t.string "email"
    t.string "grade"
    t.datetime "admission_date"
    t.datetime "exit_date"
    t.bigint "research_line_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["research_line_id"], name: "index_students_on_research_line_id"
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "sw_dev_has_students", force: :cascade do |t|
    t.string "status"
    t.bigint "sw_dev_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_sw_dev_has_students_on_student_id"
    t.index ["sw_dev_id"], name: "index_sw_dev_has_students_on_sw_dev_id"
  end

  create_table "sw_dev_has_teachers", force: :cascade do |t|
    t.string "status"
    t.bigint "sw_dev_id"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sw_dev_id"], name: "index_sw_dev_has_teachers_on_sw_dev_id"
    t.index ["teacher_id"], name: "index_sw_dev_has_teachers_on_teacher_id"
  end

  create_table "sw_dev_types", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sw_devs", force: :cascade do |t|
    t.string "sw_dev_title"
    t.string "copyright"
    t.string "beneficiary"
    t.string "objctive"
    t.string "evidence"
    t.bigint "sw_dev_type_id"
    t.bigint "message_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["message_id"], name: "index_sw_devs_on_message_id"
    t.index ["sw_dev_type_id"], name: "index_sw_devs_on_sw_dev_type_id"
  end

  create_table "teacher_types", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "rfc"
    t.string "phone"
    t.string "email"
    t.string "grade"
    t.bigint "research_line_id"
    t.bigint "origin_id"
    t.bigint "teacher_type_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["origin_id"], name: "index_teachers_on_origin_id"
    t.index ["research_line_id"], name: "index_teachers_on_research_line_id"
    t.index ["teacher_type_id"], name: "index_teachers_on_teacher_type_id"
    t.index ["user_id"], name: "index_teachers_on_user_id"
  end

  create_table "tech_dev_has_students", force: :cascade do |t|
    t.string "status"
    t.bigint "tech_dev_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_tech_dev_has_students_on_student_id"
    t.index ["tech_dev_id"], name: "index_tech_dev_has_students_on_tech_dev_id"
  end

  create_table "tech_dev_types", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tech_devs", force: :cascade do |t|
    t.string "dev_name"
    t.string "support_document"
    t.string "objective"
    t.string "summary"
    t.string "evidence"
    t.string "tech_dev_type"
    t.bigint "message_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["message_id"], name: "index_tech_devs_on_message_id"
  end

  create_table "theses", force: :cascade do |t|
    t.string "title"
    t.datetime "admission_date"
    t.datetime "exit_date"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_theses_on_student_id"
  end

  create_table "tutorial_committees", force: :cascade do |t|
    t.string "name"
    t.datetime "period"
    t.bigint "teacher_type_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_tutorial_committees_on_student_id"
    t.index ["teacher_type_id"], name: "index_tutorial_committees_on_teacher_type_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "congress_memories", "messages"
  add_foreign_key "congress_memory_has_students", "congress_memories"
  add_foreign_key "congress_memory_has_students", "students"
  add_foreign_key "congress_memory_has_teachers", "congress_memories"
  add_foreign_key "congress_memory_has_teachers", "teachers"
  add_foreign_key "course_has_students", "courses"
  add_foreign_key "course_has_students", "students"
  add_foreign_key "course_has_teachers", "courses"
  add_foreign_key "course_has_teachers", "teachers"
  add_foreign_key "courses", "messages"
  add_foreign_key "departments", "institutions"
  add_foreign_key "distinctive_sign_has_students", "distinctive_signs"
  add_foreign_key "distinctive_sign_has_students", "students"
  add_foreign_key "distinctive_sign_has_teachers", "distinctive_signs"
  add_foreign_key "distinctive_sign_has_teachers", "teachers"
  add_foreign_key "distinctive_signs", "messages"
  add_foreign_key "event_assistance_has_students", "event_assistances"
  add_foreign_key "event_assistance_has_students", "students"
  add_foreign_key "event_assistance_has_teachers", "event_assistances"
  add_foreign_key "event_assistance_has_teachers", "teachers"
  add_foreign_key "event_assistances", "messages"
  add_foreign_key "generation_has_students", "generations"
  add_foreign_key "generation_has_students", "students"
  add_foreign_key "generation_has_teachers", "generations"
  add_foreign_key "generation_has_teachers", "teachers"
  add_foreign_key "invention_has_students", "inventions"
  add_foreign_key "invention_has_students", "students"
  add_foreign_key "invention_has_teachers", "inventions"
  add_foreign_key "invention_has_teachers", "teachers"
  add_foreign_key "inventions", "messages"
  add_foreign_key "liberations", "students"
  add_foreign_key "messages", "students"
  add_foreign_key "messages", "teachers"
  add_foreign_key "pub_art_has_students", "pub_arts"
  add_foreign_key "pub_art_has_students", "students"
  add_foreign_key "pub_art_has_teachers", "pub_arts"
  add_foreign_key "pub_art_has_teachers", "teachers"
  add_foreign_key "pub_arts", "messages"
  add_foreign_key "pub_arts", "pub_art_types"
  add_foreign_key "pub_chapter_has_students", "pub_chapters"
  add_foreign_key "pub_chapter_has_students", "students"
  add_foreign_key "pub_chapter_has_teachers", "pub_chapters"
  add_foreign_key "pub_chapter_has_teachers", "teachers"
  add_foreign_key "pub_chapters", "messages"
  add_foreign_key "registries", "teachers"
  add_foreign_key "research_lines", "departments"
  add_foreign_key "set_aside_classrooms", "classrooms"
  add_foreign_key "set_aside_classrooms", "students"
  add_foreign_key "set_aside_classrooms", "teacher_types"
  add_foreign_key "set_aside_classrooms", "tutorial_committees"
  add_foreign_key "stay_has_students", "stays"
  add_foreign_key "stay_has_students", "students"
  add_foreign_key "stay_has_teachers", "stays"
  add_foreign_key "stay_has_teachers", "teachers"
  add_foreign_key "stays", "messages"
  add_foreign_key "student_has_semesters", "semesters"
  add_foreign_key "student_has_semesters", "students"
  add_foreign_key "students", "research_lines"
  add_foreign_key "students", "users"
  add_foreign_key "sw_dev_has_students", "students"
  add_foreign_key "sw_dev_has_students", "sw_devs"
  add_foreign_key "sw_dev_has_teachers", "sw_devs"
  add_foreign_key "sw_dev_has_teachers", "teachers"
  add_foreign_key "sw_devs", "messages"
  add_foreign_key "sw_devs", "sw_dev_types"
  add_foreign_key "teachers", "origins"
  add_foreign_key "teachers", "research_lines"
  add_foreign_key "teachers", "teacher_types"
  add_foreign_key "teachers", "users"
  add_foreign_key "tech_dev_has_students", "students"
  add_foreign_key "tech_dev_has_students", "tech_devs"
  add_foreign_key "tech_devs", "messages"
  add_foreign_key "theses", "students"
  add_foreign_key "tutorial_committees", "students"
  add_foreign_key "tutorial_committees", "teacher_types"
end
