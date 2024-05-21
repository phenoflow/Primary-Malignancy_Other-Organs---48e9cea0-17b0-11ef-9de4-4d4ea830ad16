cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  primary-malignancy_other-organs-neoplasm---primary:
    run: primary-malignancy_other-organs-neoplasm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  primary-malignancy_other-organs-nasal---primary:
    run: primary-malignancy_other-organs-nasal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-neoplasm---primary/output
  intrahepatic-primary-malignancy_other-organs---primary:
    run: intrahepatic-primary-malignancy_other-organs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-nasal---primary/output
  primary-malignancy_other-organs-neoplsm---primary:
    run: primary-malignancy_other-organs-neoplsm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: intrahepatic-primary-malignancy_other-organs---primary/output
  primary-malignancy_other-organs-trunkunspecified---primary:
    run: primary-malignancy_other-organs-trunkunspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-neoplsm---primary/output
  female-primary-malignancy_other-organs---primary:
    run: female-primary-malignancy_other-organs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-trunkunspecified---primary/output
  primary-malignancy_other-organs-heart---primary:
    run: primary-malignancy_other-organs-heart---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: female-primary-malignancy_other-organs---primary/output
  primary-malignancy_other-organs-majora---primary:
    run: primary-malignancy_other-organs-majora---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-heart---primary/output
  primary-malignancy_other-organs-duodenum---primary:
    run: primary-malignancy_other-organs-duodenum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-majora---primary/output
  primary-malignancy_other-organs-kaposi---primary:
    run: primary-malignancy_other-organs-kaposi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-duodenum---primary/output
  primary-malignancy_other-organs-pelvi---primary:
    run: primary-malignancy_other-organs-pelvi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-kaposi---primary/output
  primary-malignancy_other-organs-specification---primary:
    run: primary-malignancy_other-organs-specification---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-pelvi---primary/output
  primary-malignancy_other-organs-cavity---primary:
    run: primary-malignancy_other-organs-cavity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-specification---primary/output
  primary-malignancy_other-organs-cornea---primary:
    run: primary-malignancy_other-organs-cornea---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-cavity---primary/output
  tympanic-primary-malignancy_other-organs---primary:
    run: tympanic-primary-malignancy_other-organs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-cornea---primary/output
  lymphoidhaematopoietic-primary-malignancy_other-organs---primary:
    run: lymphoidhaematopoietic-primary-malignancy_other-organs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: tympanic-primary-malignancy_other-organs---primary/output
  connective-primary-malignancy_other-organs---primary:
    run: connective-primary-malignancy_other-organs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: lymphoidhaematopoietic-primary-malignancy_other-organs---primary/output
  primary-malignancy_other-organs-respiratory---primary:
    run: primary-malignancy_other-organs-respiratory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: connective-primary-malignancy_other-organs---primary/output
  mastoid-primary-malignancy_other-organs---primary:
    run: mastoid-primary-malignancy_other-organs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-respiratory---primary/output
  primary-malignancy_other-organs-stage---primary:
    run: primary-malignancy_other-organs-stage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: mastoid-primary-malignancy_other-organs---primary/output
  primary-malignancy_other-organs-orbit---primary:
    run: primary-malignancy_other-organs-orbit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-stage---primary/output
  primary-malignancy_other-organs-histiocytosis---primary:
    run: primary-malignancy_other-organs-histiocytosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-orbit---primary/output
  primary-malignancy_other-organs-eyeball---primary:
    run: primary-malignancy_other-organs-eyeball---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-histiocytosis---primary/output
  immunoproliferative-primary-malignancy_other-organs---primary:
    run: immunoproliferative-primary-malignancy_other-organs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-eyeball---primary/output
  primary-malignancy_other-organs-overlap---primary:
    run: primary-malignancy_other-organs-overlap---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: immunoproliferative-primary-malignancy_other-organs---primary/output
  primary-malignancy_other-organs-conjunctiva---primary:
    run: primary-malignancy_other-organs-conjunctiva---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-overlap---primary/output
  primary-malignancy_other-organs-thymu---primary:
    run: primary-malignancy_other-organs-thymu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-conjunctiva---primary/output
  upper-primary-malignancy_other-organs---primary:
    run: upper-primary-malignancy_other-organs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-thymu---primary/output
  primary-malignancy_other-organs-pleura---primary:
    run: primary-malignancy_other-organs-pleura---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: upper-primary-malignancy_other-organs---primary/output
  parathyroid-primary-malignancy_other-organs---primary:
    run: parathyroid-primary-malignancy_other-organs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-pleura---primary/output
  lacrimal-primary-malignancy_other-organs---primary:
    run: lacrimal-primary-malignancy_other-organs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: parathyroid-primary-malignancy_other-organs---primary/output
  gastrointestinal-primary-malignancy_other-organs---primary:
    run: gastrointestinal-primary-malignancy_other-organs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: lacrimal-primary-malignancy_other-organs---primary/output
  unknown-primary-malignancy_other-organs---primary:
    run: unknown-primary-malignancy_other-organs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: gastrointestinal-primary-malignancy_other-organs---primary/output
  primary-malignancy_other-organs-carcinoma---primary:
    run: primary-malignancy_other-organs-carcinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: unknown-primary-malignancy_other-organs---primary/output
  primary-malignancy_other-organs-auditory---primary:
    run: primary-malignancy_other-organs-auditory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-carcinoma---primary/output
  primary-malignancy_other-organs-cartilage---primary:
    run: primary-malignancy_other-organs-cartilage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-auditory---primary/output
  primary-malignancy_other-organs-abdoman---primary:
    run: primary-malignancy_other-organs-abdoman---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-cartilage---primary/output
  parietal-primary-malignancy_other-organs---primary:
    run: parietal-primary-malignancy_other-organs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-abdoman---primary/output
  primary-malignancy_other-organs-spleen---primary:
    run: primary-malignancy_other-organs-spleen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: parietal-primary-malignancy_other-organs---primary/output
  primary-malignancy_other-organs-thorax---primary:
    run: primary-malignancy_other-organs-thorax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-spleen---primary/output
  primary-malignancy_other-organs-region---primary:
    run: primary-malignancy_other-organs-region---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-thorax---primary/output
  primary-malignancy_other-organs-axilla---primary:
    run: primary-malignancy_other-organs-axilla---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-region---primary/output
  lower-primary-malignancy_other-organs---primary:
    run: lower-primary-malignancy_other-organs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-axilla---primary/output
  primary-malignancy_other-organs-vulva---primary:
    run: primary-malignancy_other-organs-vulva---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: lower-primary-malignancy_other-organs---primary/output
  primary-malignancy_other-organs-sarcoma---primary:
    run: primary-malignancy_other-organs-sarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-vulva---primary/output
  primary-malignancy_other-organs-periph---primary:
    run: primary-malignancy_other-organs-periph---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-sarcoma---primary/output
  primary-malignancy_other-organs-retroperitoneum---primary:
    run: primary-malignancy_other-organs-retroperitoneum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-periph---primary/output
  primary-malignancy_other-organs-trunk---primary:
    run: primary-malignancy_other-organs-trunk---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-retroperitoneum---primary/output
  primary-malignancy_other-organs-lymphoma---primary:
    run: primary-malignancy_other-organs-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-trunk---primary/output
  primary-malignancy_other-organs-vagina---primary:
    run: primary-malignancy_other-organs-vagina---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-lymphoma---primary/output
  primary-malignancy_other-organs-larynx---primary:
    run: primary-malignancy_other-organs-larynx---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-vagina---primary/output
  primary-malignancy_other-organs-sinus---primary:
    run: primary-malignancy_other-organs-sinus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-larynx---primary/output
  primary-malignancy_other-organs-kidney---primary:
    run: primary-malignancy_other-organs-kidney---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-sinus---primary/output
  primary-malignancy_other-organs-intestine---primary:
    run: primary-malignancy_other-organs-intestine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-kidney---primary/output
  adrenal-primary-malignancy_other-organs---primary:
    run: adrenal-primary-malignancy_other-organs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-intestine---primary/output
  primary-malignancy_other-organs-phaeochromocytoma---primary:
    run: primary-malignancy_other-organs-phaeochromocytoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: adrenal-primary-malignancy_other-organs---primary/output
  primary-malignancy_other-organs-uterine---primary:
    run: primary-malignancy_other-organs-uterine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-phaeochromocytoma---primary/output
  intrathoracic-primary-malignancy_other-organs---primary:
    run: intrathoracic-primary-malignancy_other-organs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-uterine---primary/output
  primary-malignancy_other-organs-unspec---primary:
    run: primary-malignancy_other-organs-unspec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: intrathoracic-primary-malignancy_other-organs---primary/output
  inguinal-primary-malignancy_other-organs---primary:
    run: inguinal-primary-malignancy_other-organs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-unspec---primary/output
  primary-malignancy_other-organs-tissue---primary:
    run: primary-malignancy_other-organs-tissue---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: inguinal-primary-malignancy_other-organs---primary/output
  primary-malignancy_other-organs-penis---primary:
    run: primary-malignancy_other-organs-penis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-tissue---primary/output
  primary-malignancy_other-organs-molfactory---primary:
    run: primary-malignancy_other-organs-molfactory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-penis---primary/output
  primary-malignancy_other-organs-spine---primary:
    run: primary-malignancy_other-organs-spine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-molfactory---primary/output
  primary-malignancy_other-organs-posterior---primary:
    run: primary-malignancy_other-organs-posterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-spine---primary/output
  primary-malignancy_other-organs-anterior---primary:
    run: primary-malignancy_other-organs-anterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-posterior---primary/output
  choroid-primary-malignancy_other-organs---primary:
    run: choroid-primary-malignancy_other-organs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-anterior---primary/output
  primary-malignancy_other-organs-letterersiwe---primary:
    run: primary-malignancy_other-organs-letterersiwe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: choroid-primary-malignancy_other-organs---primary/output
  primary-malignancy_other-organs-gland---primary:
    run: primary-malignancy_other-organs-gland---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-letterersiwe---primary/output
  primary-malignancy_other-organs-retina---primary:
    run: primary-malignancy_other-organs-retina---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-gland---primary/output
  primary-malignancy_other-organs-placenta---primary:
    run: primary-malignancy_other-organs-placenta---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-retina---primary/output
  primary-malignancy_other-organs---primary:
    run: primary-malignancy_other-organs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-placenta---primary/output
  primary-malignancy_other-organs-[m]aesthesioneuroblastoma---primary:
    run: primary-malignancy_other-organs-[m]aesthesioneuroblastoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs---primary/output
  urinary-primary-malignancy_other-organs---primary:
    run: urinary-primary-malignancy_other-organs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-[m]aesthesioneuroblastoma---primary/output
  primary-malignancy_other-organs-accessory---primary:
    run: primary-malignancy_other-organs-accessory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: urinary-primary-malignancy_other-organs---primary/output
  primary-malignancy_other-organs-labia---primary:
    run: primary-malignancy_other-organs-labia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-accessory---primary/output
  primary-malignancy_other-organs-shoulder---primary:
    run: primary-malignancy_other-organs-shoulder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-labia---primary/output
  laryngeal-primary-malignancy_other-organs---primary:
    run: laryngeal-primary-malignancy_other-organs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-shoulder---primary/output
  nervous-primary-malignancy_other-organs---primary:
    run: nervous-primary-malignancy_other-organs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: laryngeal-primary-malignancy_other-organs---primary/output
  primary-malignancy_other-organs-tumour---primary:
    run: primary-malignancy_other-organs-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: nervous-primary-malignancy_other-organs---primary/output
  primary-malignancy_other-organs-gallbladder---primary:
    run: primary-malignancy_other-organs-gallbladder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-tumour---primary/output
  other---primary:
    run: other---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-gallbladder---primary/output
  possible-primary-malignancy_other-organs---primary:
    run: possible-primary-malignancy_other-organs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: other---primary/output
  digestive-primary-malignancy_other-organs---primary:
    run: digestive-primary-malignancy_other-organs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: possible-primary-malignancy_other-organs---primary/output
  primary-malignancy_other-organs-illdefined---primary:
    run: primary-malignancy_other-organs-illdefined---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: digestive-primary-malignancy_other-organs---primary/output
  primary-malignancy_other-organs-middle---primary:
    run: primary-malignancy_other-organs-middle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-illdefined---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-organs-middle---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
