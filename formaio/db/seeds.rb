# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.username
lorem = "Lorem ipsum..."
tandc = "Termeni si conditii..."
info = "Informatii despre asta..."
q_cunostinte = {
  question: "CUNOSTINTE CONFIGURARE",
  answers_are_sections: true, 
  info: info,
  answer_type: "check_boxes",
  posible_answer_attributes: [{
    answer: "BEGINNER",
    section: "BEGINNER QUESTIONS",
    info: info}, 
    {
    answer: "MEDIUM",
    section: "MEDIUM QUESTIONS",
    info: info},
    {
    answer: "EXPERT",
    section: "EXPERT QUESTIONS",
    info: info}
  ]
}
q_destinatie = {
  question: "DESTINATIE", 
  info: info,
  answer_type: "check_boxes",
  posible_answer_attributes: [{
    answer: "GAMING",
    info: info}, 
    {
    answer: "OFFICE",
    info: info},
    {
    answer: "GRAFICA",
    info: info},
    {
    answer: "EDIT VIDEO",
    info: info},
    {
    answer: "SCOALA",
    info: info},
    {
    answer: "MULTIMEDIA",
    info: info}
  ]
}
q_data = {
  question: "DATA ESTIMATIVA  A ACHIZITIONARII", 
  info: info,
  is_required: true,
  answer_type: "calendar",
}
q_doresc_periferice = {
  question: "DORESC SI PERIFERICE", 
  info: info,
  answer_type: "check_box",
}
q_buget_perif_inclus = {
  question: "BUGET PERIFERICE  INCLUS IN BUGET LAPTOP/PC", 
  info: info,
  answer_type: "check_box",
}
q_buget_perif = {
  question: "BUGET PERIFERICE", 
  info: info,
  answer_type: "price_range",
  posible_answer_attributes: [{
    answer: "0",
    info: "IEFTIN"}, 
    {
    answer: "100",
    info: "CEVA"},
    {
    answer: "500",
    info: "MAI MULT"},
    {
    answer: "10000",
    info: "FARA NUMAR"}
  ]
}
q_ce_perif = {
  question: "CE PERIFERICE?", 
  info: info,
  answer_type: "check_boxes",
  posible_answer_attributes: [{
    answer: "MONITOR",
    info: info}, 
    {
    answer: "MOUSE CU FIR",
    info: info},
    {
    answer: "MOUSE FARA FIR",
    info: info},
    {
    answer: "TASTATURA CU FIR",
    info: info},
    {
    answer: "TASTATURA FARA FIR",
    info: info},
    {
    answer: "UNITATE OPTICA",
    info: info},
    {
    answer: "WEB-CAM",
    info: info},
    {
    answer: "BOXE",
    info: info},
    {
    answer: "CASTI CU MICROFON",
    info: info},
    {
    answer: "CASTI FARA MICROFON",
    info: info},
    {
    answer: "HDD EXTERN",
    info: info}
  ]
}
q_doresc_imprimanta = {
  question: "DORESC SI IMPRINMANTA ", 
  info: info,
  is_required: true,
  answer_type: "check_box",
}
q_ce_prog = {
  question: "CE PROGRAME/JOCURI DORITI CA ACESTA SA POATA RULA? (Ex: Microsoft Office, Netflix...etc.)", 
  info: info,
  answer_type: "text_area",
}
q_aveti_comp = {
  question: "AVETI DEJA  O COMPONENTA PERIFERICA ANUME? DACA DA, VA RUGAM SA NE DETALIATI (tip, model, etc.)", 
  info: info,
  answer_type: "text_area",
}
q_software = {
  question: "DORITI ACHIZITIONAREA SEPARATA A UNUI SOFTWARE?", 
  info: info,
  answer_type: "check_boxes",
  posible_answer_attributes: [{
    answer: "Pachet Microsoft Office",
    info: info}, 
    {
    answer: "Licenta Windows 10",
    info: info}
  ]
}
q_nuclee_proc = {
  question: "NUMAR NUCLEE PROCESOR:", 
  info: info,
  answer_type: "radio_buttons",
  posible_answer_attributes: [{
    answer: "2",
    info: info}, 
    {
    answer: "4",
    info: info}, 
    {
    answer: "6",
    info: info}, 
    {
    answer: "8",
    info: info}, 
    {
    answer: "ALEGE PENTRU MINE",
    info: info}
  ]
}
s_medium = {
  name: "MEDIUM QUESTIONS",
  questions_attributes: [{
      question: "PROCESOR INTEL SAU AMD ?", 
      info: info,
      answer_type: "radio_buttons",
      posible_answer_attributes: [{
        answer: "INTEL",
        info: info}, 
        {
        answer: "AMD",
        info: info}, 
        {
        answer: "ALEGE PENTRU MINE",
        info: info}
      ]
    },
    {
      question: "PLACA VIDEO NVIDIA SAU AMD ?", 
      info: info,
      answer_type: "radio_buttons",
      posible_answer_attributes: [{
        answer: "NVIDIA",
        info: info}, 
        {
        answer: "AMD",
        info: info}, 
        {
        answer: "INTEGRATA",
        info: info}, 
        {
        answer: "ALEGE PENTRU MINE",
        info: info}
      ]
    },
    {
      question: "HARD DISK-ul DE MEMORIE SA FIE ?", 
      info: info,
      answer_type: "radio_buttons",
      posible_answer_attributes: [{
        answer: "HDD",
        info: info}, 
        {
        answer: "SSD",
        info: info}, 
        {
        answer: "HDD+SSD",
        info: info}, 
        {
        answer: "ALEGE PENTRU MINE",
        info: info}
      ]
    }
  ]
}
s_printer = {
  name: "PRINTER QUESTIONS ",
  extra_price: 20,
  questions_attributes: [{
      question: "ESTIMATIV CAT DE DES PRINTATI ?", 
      info: info,
      answer_type: "radio_buttons",
      posible_answer_attributes: [{
        answer: "MAI MULTE ORI PE ZI",
        info: info}, 
        {
        answer: "ZILNIC",
        info: info}, 
        {
        answer: "SAPTAMANAL",
        info: info}, 
        {
        answer: "LUNAR",
        info: info}, 
        {
        answer: "RAR",
        info: info}
      ]
    },
    {
      question: "MULTIFUNCTIONAL?", 
      info: info,
      answer_type: "radio_buttons",
      posible_answer_attributes: [{
        answer: "DA",
        info: info}, 
        {
        answer: "NU",
        info: info}
      ]
    },
    {
      question: "TIPUL:", 
      info: info,
      answer_type: "radio_buttons",
      posible_answer_attributes: [{
        answer: "INKJET",
        info: info}, 
        {
        answer: "INKJET CISS",
        info: info}, 
        {
        answer: "LASER",
        info: info}
      ]
    },
    {
      question: "MOD PRINTARE:", 
      info: info,
      answer_type: "radio_buttons",
      posible_answer_attributes: [{
        answer: "MONOCROM",
        info: info}, 
        {
        answer: "COLOR",
        info: info}
      ]
    },
    {
      question: "DUPLEX:", 
      info: info,
      answer_type: "radio_buttons",
      posible_answer_attributes: [{
        answer: "AUTOMAT",
        info: info}, 
        {
        answer: "MANUAL",
        info: info}, 
        {
        answer: "FARA DUPLEX",
        info: info}
      ]
    },
    {
      question: "MOD DE CONECTARE:", 
      info: info,
      answer_type: "radio_buttons",
      posible_answer_attributes: [{
        answer: "LAN",
        info: info}, 
        {
        answer: "WI-FI",
        info: info}, 
        {
        answer: "USB",
        info: info}
      ]
    }
  ]
}
s_final = {
  name: "Final Section",
  questions_attributes: [{
      question: "DACA AVETI ALTE OBSERVATII DESPRE CE SA AVEM IN VEDERE PRIVIND CONFIGURAREA PC-ULUI VA RUGAM SA LE SCRIETI MAI JOS.", 
      info: info,
      answer_type: "text_area"
    },
    {
      question: "Sunt de acord sa ma abonez la newsletter", 
      info: info,
      answer_type: "check_box"
    },
    {
      question: "Sunt de acord ca.... orice modificare adusa la lista  (dupa ce o trimitem noi) ......trebuie sa formulam cumva ca nu suntem raspunzatori daca cumpara ei altceva si nu merge", 
      is_required: true,
      info: info,
      answer_type: "check_box"
    },
    {
      question: "Am citit si sunt de acord cu termenii si conditiile.", 
      is_required: true,
      info: info,
      answer_type: "check_box"
    }
  ]
}
AnswerForm.delete_all
AnswerFormPosibleAnswer.delete_all
AnswerFormField.delete_all
AnswerFormComponent.delete_all
AnswerFormType.delete_all

ClientForm.delete_all
ClientFormPosibleAnswer.delete_all
ClientFormQuestion.delete_all
ClientFormSection.delete_all
ClientFormType.delete_all

ClientFormCategory.delete_all

cat_laptop = ClientFormCategory.create!(name: "Laptop",description: lorem)
cat_perif = ClientFormCategory.create!(name: "Periferice",description: lorem)
cat_comp = ClientFormCategory.create!(name: "Componente",description: lorem)
cat_impr = ClientFormCategory.create!(name: "Imprimanta",description: lorem)
cat_cam = ClientFormCategory.create!(name: "Camere Supraveghere",description: lorem)
cat_pc = ClientFormCategory.create!(name: "PC",description: lorem)

cft_laptop = ClientFormType.create!(name: "Laptop",
  description: lorem,
  is_activ: true,
  price: 40,
  preform_term_and_conditions: tandc,
  client_form_category_ids:[cat_laptop.id],
  sections_attributes: [{
    name: "Detalii Generale",
    is_default: true,
    questions_attributes: [q_cunostinte, q_destinatie, q_data,
      {
        question: "BUGET LAPTOP", 
        info: info,
        answer_type: "price_range",
        posible_answer_attributes: [{
          answer: "0",
          info: "IEFTIN"}, 
          {
          answer: "1000",
          info: "SCHOOL"},
          {
          answer: "3000",
          info: "GAMING"},
          {
          answer: "10000",
          info: "FARA NUMAR"}
        ]
      },q_doresc_periferice, q_buget_perif_inclus, q_buget_perif, q_ce_perif, q_doresc_imprimanta
    ]
  },{
    name: "BEGINNER QUESTIONS",
    questions_attributes: [{
        question: "CINE VA FOLOSI LAPTOPUL SI CE VARSTA ARE UTILIZATORUL? (Principalul utilizator)", 
        info: info,
        answer_type: "text_field"
      }, q_ce_prog,
      {
        question: "CAT DE IMPORTANTA ESTE PORTABILITATEA LAPTOPULUI PENTRU DVS. ?", 
        info: info,
        answer_type: "radio_buttons",
        posible_answer_attributes: [{
          answer: "IL IAU DES CU MINE",
          info: info}, 
          {
          answer: "IL FOLOSESC MAI MULT ACASA",
          info: info}
        ]
      },
      {
        question: "DIMENSIUNEA ECRANULUI:", 
        info: info,
        answer_type: "radio_buttons",
        posible_answer_attributes: [{
          answer: "MIC - 13-14”",
          info: info
          }, 
          {
          answer: "NORMAL - 15”",
          info: info
          },
          {
          answer: "MARE - 17”",
          info: info
          },
          {
          answer: "ALEGE PENTRU MINE",
          info: info
          }
        ]
      },
      q_aveti_comp,
      q_software
    ]
  },s_medium,
  {
    name: "EXPERT QUESTIONS",
    questions_attributes: [{
        question: "CATA MEMORIE DE STOCARE SA AIVA LAPTOP-UL ?", 
        info: info,
        answer_type: "radio_buttons",
        posible_answer_attributes: [{
          answer: "256GB",
          info: info}, 
          {
          answer: "500GB",
          info: info}, 
          {
          answer: "1TB",
          info: info}, 
          {
          answer: "2TB",
          info: info}, 
          {
          answer: "ALEGE PENTRU MINE",
          info: info}
        ]
      },
      q_nuclee_proc,
      {
        question: "CATA MEMORIE SA AIVA LAPTOP-UL ?", 
        info: info,
        answer_type: "radio_buttons",
        posible_answer_attributes: [{
          answer: "4",
          info: info}, 
          {
          answer: "8",
          info: info}, 
          {
          answer: "16",
          info: info}, 
          {
          answer: "32",
          info: info}, 
          {
          answer: "ALEGE PENTRU MINE",
          info: info}
        ]
      }
    ]
  }, s_printer, s_final]
)
cft_pc_din_comp = ClientFormType.create!(name: "Pc din componente",
  description: lorem,
  is_activ: true,
  price: 60,
  preform_term_and_conditions: tandc,
  client_form_category_ids:[cat_pc.id],
  sections_attributes: [{
    name: "Detalii Generale",
    is_default: true,
    questions_attributes: [q_cunostinte, q_destinatie, q_data,
      {
        question: "BUGET PC", 
        info: info,
        answer_type: "price_range",
        posible_answer_attributes: [{
          answer: "0",
          info: "IEFTIN"}, 
          {
          answer: "1900",
          info: "SCHOOL"},
          {
          answer: "3500",
          info: "MULTIMEDIA"},
          {
          answer: "10000",
          info: "FARA NUMAR"}
        ]
      },q_doresc_periferice, q_buget_perif_inclus, q_buget_perif, q_ce_perif, q_doresc_imprimanta
    ]
  },{
    name: "BEGINNER QUESTIONS",
    questions_attributes: [{
        question: "CINE VA FOLOSI CALCULATORUL SI CE VARSTA ARE UTILIZATORUL? (Principalul utilizator)", 
        info: info,
        answer_type: "text_field"
      }, q_ce_prog, q_aveti_comp, q_software
    ]
  },s_medium,
  {
    name: "EXPERT QUESTIONS",
    questions_attributes: [{
        question: "CATA MEMORIE DE STOCARE SA AIVA PC-UL ?", 
        info: info,
        answer_type: "radio_buttons",
        posible_answer_attributes: [{
          answer: "256GB",
          info: info}, 
          {
          answer: "500GB",
          info: info}, 
          {
          answer: "1TB",
          info: info}, 
          {
          answer: "2TB",
          info: info}, 
          {
          answer: "ALEGE PENTRU MINE",
          info: info}
        ]
      },
      q_nuclee_proc,
      {
        question: "CATA MEMORIE SA AIVA PC-UL ?", 
        info: info,
        answer_type: "radio_buttons",
        posible_answer_attributes: [{
          answer: "8",
          info: info}, 
          {
          answer: "16",
          info: info}, 
          {
          answer: "32",
          info: info}, 
          {
          answer: "64",
          info: info}, 
          {
          answer: "ALEGE PENTRU MINE",
          info: info}
        ]
      }
    ]
  }, s_printer, s_final]
)
cft_cam = ClientFormType.create!(name: "Camere Supraveghere",
  description: lorem,
  is_activ: true,
  price: 50,
  preform_term_and_conditions: tandc,
  client_form_category_ids:[cat_cam.id],
  sections_attributes: [{
    name: "Detalii Generale",
    is_default: true,
    questions_attributes: [q_cunostinte, {
        question: "DESTINATIE", 
        info: info,
        answer_type: "check_boxes",
        posible_answer_attributes: [{
          answer: "Interior",
          info: info}, 
          {
          answer: "Exterior",
          info: info},
          {
          answer: "Interior si exterior",
          info: info}
        ]
      },
      {
        question: "Nr. camere interior", 
        info: info,
        answer_type: "number"
      },
      {
        question: "Nr. camere exterior", 
        info: info,
        answer_type: "number"
      }, q_data
    ]
  },{
    name: "Buget",
    questions_attributes: [{
        question: "Buget camere", 
        info: info,
        answer_type: "price_range",
        posible_answer_attributes: [{
          answer: "0",
          info: "IEFTIN"}, 
          {
          answer: "100",
          info: lorem},
          {
          answer: "1000",
          info: lorem},
          {
          answer: "10000",
          info: "FARA NUMAR"}
        ]
      }, 
      {
        question: "Buget periferice inclus in buget camere", 
        info: info,
        answer_type: "check_box",
      }, q_doresc_periferice,
      {
        question: "Buget periferice", 
        info: info,
        answer_type: "price_range",
        posible_answer_attributes: [{
          answer: "0",
          info: "IEFTIN"}, 
          {
          answer: "100",
          info: lorem},
          {
          answer: "500",
          info: lorem},
          {
          answer: "10000",
          info: "FARA NUMAR"}
        ]
      },
      {
        question: "CE PERIFERICE?", 
        info: info,
        answer_type: "check_boxes",
        posible_answer_attributes: [{
          answer: "MONITOR",
          info: info}, 
          {
          answer: "MOUSE CU FIR",
          info: info},
          {
          answer: "HDD EXTERN",
          info: info}
        ]
      }
    ]
  },{
    name: "BEGINNER QUESTIONS",
    questions_attributes: [{
        question: "LA INTERIOR OPTATI PENTRU CONEXIUNE WIRELESS SAU CU CABLU?", 
        info: info,
        answer_type: "radio_buttons",
        posible_answer_attributes: [{
          answer: "DA",
          info: info}, 
          {
          answer: "NU",
          info: info},
          {
          answer: "NU STIU",
          info: info}
        ]
      }, 
      {
        question: "Vizualizare live a camerelor?", 
        info: info,
        answer_type: "radio_buttons",
        posible_answer_attributes: [{
          answer: "DA",
          info: info}, 
          {
          answer: "NU",
          info: info},
          {
          answer: "NU STIU",
          info: info}
        ]
      },
      {
        question: "CARE DORITI SA FIE DURATA MINIMA DE INREGISTRARE A CAMERELOR? Zile", 
        info: info,
        answer_type: "number"
      },
      {
        question: "DORITI SA VIZUALIZATI CAMERELE SI DE PE DISPOZITIVE MOBILE?", 
        info: info,
        answer_type: "radio_buttons",
        posible_answer_attributes: [{
          answer: "DA",
          info: info}, 
          {
          answer: "NU",
          info: info}
        ]
      },
      {
        question: "INREGISTRARILE DORITI SA FIE STOCATE IN CLOUD SAU LOCAL?", 
        info: info,
        answer_type: "radio_buttons",
        posible_answer_attributes: [{
          answer: "DA",
          info: info}, 
          {
          answer: "NU",
          info: info},
          {
          answer: "NU STIU",
          info: info}
        ]
      },
      {
        question: "CONSIDERATI CA PE VIITOR O SA SUPLIMENTATI NUMARUL DE CAMERE DE SUPRAVEGHERE?", 
        info: info,
        answer_type: "radio_buttons",
        posible_answer_attributes: [{
          answer: "DA",
          info: info}, 
          {
          answer: "NU",
          info: info},
          {
          answer: "NU STIU",
          info: info}
        ]
      }
    ]
  },
  {
    name: "MEDIUM QUESTIONS",
    questions_attributes: [{
        question: "AVETI IDEE DACA DISTANTA DINTRE CEA MAI INDEPARTATA CAMERA SI LOCUL UNDE VRETI INSTALAT NVR/DVR DEPASESTE 100M ?", 
        info: info,
        answer_type: "radio_buttons",
        posible_answer_attributes: [{
          answer: "DA",
          info: info}, 
          {
          answer: "NU",
          info: info},
          {
          answer: "NU STIU",
          info: info}
        ]
      },
      {
        question: "DORITI INSTALATE CAMERE IP SAU ANALOG?", 
        info: info,
        answer_type: "radio_buttons",
        posible_answer_attributes: [{
          answer: "IP",
          info: info}, 
          {
          answer: "ANALOG",
          info: info},
          {
          answer: "NU STIU",
          info: info}
        ]
      },
      {
        question: "DORITI SA FOLOSIM CAMERELE UNUI/UNOR PRODUCATOR/I ANUME? ", 
        info: info,
        answer_type: "text_field"
      },
      
    ]
  },
  {
    name: "EXPERT QUESTIONS",
    questions_attributes: [{
        question: "ATI DORI SA FOLOSITI CAMERE CU PTZ ?", 
        info: info,
        answer_type: "radio_buttons",
        posible_answer_attributes: [{
          answer: "DA",
          info: info}, 
          {
          answer: "NU",
          info: info},
          {
          answer: "NU STIU",
          info: info}
        ]
      }
    ]
  }, s_final]
)
cft_pc_deja_conf = ClientFormType.create!(name: "Pc deja configurat",
  description: lorem,
  is_activ: false,
  price: 50,
  preform_term_and_conditions: tandc,
  client_form_category_ids:[cat_pc.id],
  sections_attributes: [s_final]
)
cft_all_in_one = ClientFormType.create!(name: "Pc all in one",
  description: lorem,
  is_activ: false,
  price: 50,
  preform_term_and_conditions: tandc,
  client_form_category_ids:[cat_pc.id],
  sections_attributes: [s_final]
)
cft_carcasa = ClientFormType.create!(name: "Carcasa",
  description: lorem,
  is_activ: false,
  price: 50,
  preform_term_and_conditions: tandc,
  client_form_category_ids:[cat_comp.id],
  sections_attributes: [s_final]
)
cft_hdd = ClientFormType.create!(name: "HDD/SSD",
  description: lorem,
  is_activ: false,
  price: 50,
  preform_term_and_conditions: tandc,
  client_form_category_ids:[cat_comp.id],
  sections_attributes: [s_final]
)
cft_ram = ClientFormType.create!(name: "Memorie ram",
  description: lorem,
  is_activ: false,
  price: 50,
  preform_term_and_conditions: tandc,
  client_form_category_ids:[cat_comp.id],
  sections_attributes: [s_final]
)
cft_video = ClientFormType.create!(name: "Placa video",
  description: lorem,
  is_activ: false,
  price: 50,
  preform_term_and_conditions: tandc,
  client_form_category_ids:[cat_comp.id],
  sections_attributes: [s_final]
)
cft_motherboard = ClientFormType.create!(name: "Placa de baza",
  description: lorem,
  is_activ: false,
  price: 50,
  preform_term_and_conditions: tandc,
  client_form_category_ids:[cat_comp.id],
  sections_attributes: [s_final]
)
cft_procesor = ClientFormType.create!(name: "Processor",
  description: lorem,
  is_activ: false,
  price: 50,
  preform_term_and_conditions: tandc,
  client_form_category_ids:[cat_comp.id],
  sections_attributes: [s_final]
)
cft_monitor = ClientFormType.create!(name: "Monitor",
  description: lorem,
  is_activ: false,
  price: 50,
  preform_term_and_conditions: tandc,
  client_form_category_ids:[cat_perif.id],
  sections_attributes: [s_final]
)
cft_casti = ClientFormType.create!(name: "Casti",
  description: lorem,
  is_activ: false,
  price: 50,
  preform_term_and_conditions: tandc,
  client_form_category_ids:[cat_perif.id],
  sections_attributes: [s_final]
)
cft_tastatura = ClientFormType.create!(name: "Tastatura",
  description: lorem,
  is_activ: false,
  price: 50,
  preform_term_and_conditions: tandc,
  client_form_category_ids:[cat_perif.id],
  sections_attributes: [s_final]
)
cft_mouse = ClientFormType.create!(name: "Mouse",
  description: lorem,
  is_activ: false,
  price: 50,
  preform_term_and_conditions: tandc,
  client_form_category_ids:[cat_perif.id],
  sections_attributes: [s_final]
)
cft_imprimanta = ClientFormType.create!(name: "Imprimanta",
  description: lorem,
  is_activ: false,
  price: 50,
  preform_term_and_conditions: tandc,
  client_form_category_ids:[cat_impr.id],
  sections_attributes: [s_final]
)
AnswerFormType.create!(name: "Laptop",
  client_form_type_id: cft_laptop.id,
  components_attributes: [
    {name: "Laptop",
    fields_attributes:[
      {name: "Model",field_type: "text_field"},{name: "Make",field_type: "text_field"},{name: "Link",field_type: "text_field"}
    ]},
    {name: "HDD Extern",
    fields_attributes:[
      {name: "Model",field_type: "text_field"},{name: "Make",field_type: "text_field"},{name: "Link",field_type: "text_field"}
    ]},
  ]
)
AnswerFormType.create!(name: "PC din componente",
  client_form_type_id: cft_pc_din_comp.id,
  components_attributes: [
    {name: "Procesor",
    fields_attributes:[
      {name: "Model",field_type: "text_field"},{name: "Make",field_type: "drop_down",posible_answer_attributes: [{answer: "Intel"},{answer: "AMD"}]},{name: "Link",field_type: "text_field"}
    ]},
    {name: "Ram",
    fields_attributes:[
      {name: "Model",field_type: "text_field"},{name: "Make",field_type: "text_field"},{name: "Link",field_type: "text_field"}
    ]},
  ]
)
AnswerFormType.create!(name: "PC deja configurat",
  client_form_type_id: cft_pc_deja_conf.id,
  components_attributes: [
    {name: "PC",
    fields_attributes:[
      {name: "Model",field_type: "text_field"},{name: "Make",field_type: "drop_down",posible_answer_attributes: [{answer: "Intel"},{answer: "AMD"}]},{name: "Link",field_type: "text_field"}
    ]},
    {name: "HDD",
    fields_attributes:[
      {name: "Model",field_type: "text_field"},{name: "Make",field_type: "text_field"},{name: "Link",field_type: "text_field"}
    ]},
  ]
)
AnswerFormType.create!(name: "PC all in one",
  client_form_type_id: cft_all_in_one.id,
  components_attributes: [
    {name: "PC",
    fields_attributes:[
      {name: "Model",field_type: "text_field"},{name: "Make",field_type: "drop_down",posible_answer_attributes: [{answer: "Intel"},{answer: "AMD"}]},{name: "Link",field_type: "text_field"}
    ]},
    {name: "Ram",
    fields_attributes:[
      {name: "Model",field_type: "text_field"},{name: "Make",field_type: "text_field"},{name: "Link",field_type: "text_field"}
    ]},
  ]
)
AnswerFormType.create!(name: "Carcasa",
  client_form_type_id: cft_carcasa.id,
  components_attributes: [
    {name: "Carcasa",
    fields_attributes:[
      {name: "Model"},{name: "Make"},{name: "Link"}
    ]},
  ]
)
AnswerFormType.create!(name: "HDD/SSD",
  client_form_type_id: cft_hdd.id,
  components_attributes: [
    {name: "HDD/SSD",
    fields_attributes:[
      {name: "Model"},{name: "Make"},{name: "Link"}
    ]},
  ]
)
AnswerFormType.create!(name: "Memorie ram",
  client_form_type_id: cft_ram.id,
  components_attributes: [
    {name: "Memorie ram",
    fields_attributes:[
      {name: "Model"},{name: "Make"},{name: "Link"}
    ]},
  ]
)
AnswerFormType.create!(name: "Placa video",
  client_form_type_id: cft_video.id,
  components_attributes: [
    {name: "Placa video",
    fields_attributes:[
      {name: "Model"},{name: "Make"},{name: "Link"}
    ]},
  ]
)
AnswerFormType.create!(name: "Placa de baza",
  client_form_type_id: cft_motherboard.id,
  components_attributes: [
    {name: "Placa de baza",
    fields_attributes:[
      {name: "Model"},{name: "Make"},{name: "Link"}
    ]},
  ]
)
AnswerFormType.create!(name: "Processor",
  client_form_type_id: cft_procesor.id,
  components_attributes: [
    {name: "Processor",
    fields_attributes:[
      {name: "Model"},{name: "Make",field_type: "drop_down",posible_answer_attributes: [{answer: "Intel"},{answer: "AMD"}]},{name: "Link"}
    ]},
  ]
)
AnswerFormType.create!(name: "Monitor",
  client_form_type_id: cft_monitor.id,
  components_attributes: [
    {name: "Monitor",
    fields_attributes:[
      {name: "Model",field_type: "text_field"},{name: "Make",field_type: "text_field"},{name: "Link",field_type: "text_field"}
    ]},
  ]
)
AnswerFormType.create!(name: "Casti",
  client_form_type_id: cft_casti.id,
  components_attributes: [
    {name: "Casti",
    fields_attributes:[
      {name: "Model",field_type: "text_field"},{name: "Make",field_type: "text_field"},{name: "Link",field_type: "text_field"}
    ]},
  ]
)
AnswerFormType.create!(name: "Tastatura",
  client_form_type_id: cft_tastatura.id,
  components_attributes: [
    {name: "Tastatura",
    fields_attributes:[
      {name: "Model",field_type: "text_field"},{name: "Make",field_type: "text_field"},{name: "Link",field_type: "text_field"}
    ]},
  ]
)
AnswerFormType.create!(name: "Mouse",
  client_form_type_id: cft_mouse.id,
  components_attributes: [
    {name: "Mouse",
    fields_attributes:[
      {name: "Model",field_type: "text_field"},{name: "Make",field_type: "text_field"},{name: "Link",field_type: "text_field"}
    ]},
  ]
)
AnswerFormType.create!(name: "Imprimanta",
  client_form_type_id: cft_imprimanta.id,
  components_attributes: [
    {name: "Imprimanta",
    fields_attributes:[
      {name: "Model",field_type: "text_field"},{name: "Make",field_type: "text_field"},{name: "Link",field_type: "text_field"}
    ]},
  ]
)
AnswerFormType.create!(name: "Camere Supraveghere",
  client_form_type_id: cft_cam.id,
  components_attributes: [
    {name: "Camere Supraveghere",
    fields_attributes:[
      {name: "Model",field_type: "text_field"},{name: "Make",field_type: "text_field"},{name: "Link",field_type: "text_field"}
    ]},
  ]
)