class ReceiptPdf < Prawn::Document

  def initialize(evaluacion, view)
     super()
     @evaluacion = evaluacion
     @vista = view
     formato_vaproductiva
  end

  def formato_vaproductiva
    text "Texto"
  end

end
