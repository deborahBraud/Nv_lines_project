class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  enum staff_type: [:Team, :Facility]
  enum generation: [:F0, :F1, :F2]
  enum zygosity: [:Homozygous, :Heterozygous]
  enum line_type: [:reporter, :functional_conditional_loss, :functional_conditional_gain, :functional_constitutive_loss, :functional_constitutive_gain, :wildtype, :other ]
  enum region_type: [:Head, :Body, :Foot, :Mesenteries, :Amputation, :Nematosome, :Tentacle, :Mouth, :Pharynx]
  enum sublocalisation_type: [:Nuclei_mb, :Cell_mb, :Nuclei, :Cytoplasm]
  enum cell_type: [:Epithelial, :Cnidocyte, :Neuronal, :Gland, :Muscle, :Germline, :Stem, :Ectoderm, :Endoderm]
end
