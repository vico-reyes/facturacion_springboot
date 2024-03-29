package com.bolsadeideas.springboot.app.view.pdf;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.view.document.AbstractPdfView;

import com.bolsadeideas.springboot.app.models.entity.Factura;
import com.lowagie.text.Document;
import com.lowagie.text.pdf.*;

@Component("factura/ver")
public class FacturaPdfView extends AbstractPdfView {
	
	@Override
	protected void buildPdfDocument(Map<String, Object> model, Document document, PdfWriter writer,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		Factura factura = (Factura) model.get("factura");
		
		PdfPTable tabla = new PdfPTable(1);
		tabla.setSpacingAfter(20);
		tabla.addCell("Datos del cliente");
		tabla.addCell(factura.getCliente().getNombre() + " " + factura.getCliente().getApellido() );
		tabla.addCell(factura.getCliente().getEmail());
		
		PdfPTable tabla = new PdfPTable(1);
		tabla.setSpacingAfter(20);
		tabla.addCell("Datos de la factura");
		tabla.addCell("Folio: " + factura.getId());
		tabla.addCell("Descripción: " + factura.getDescripcion());
		tabla.addCell("Fecha: " + factura.getCreateAt());	
		
		document.add(tabla);
		document.add(tabla2);
		
		PdfPTable tabla3 = new PdfPTable(4);
		tabla.addCell("Productor");
		tabla.addCell("Precio");
		tabla.addCell("Cantidad");
		tabla.addCell("Total");
		
		for(ItemFactura item: factura.getItems()) {
			tabla.addCell(item.getProducto().getNombre());
			tabla.addCell(item.getProducto().getPrecio().toString());
			tabla.addCell(item.getCantidad().toString());
			tabla.addCell(item.calcularImporte().toString());
		}
		
		PdfPCell cell = new PdfPCell(new Phrase("Total: "));
		cell.setColspan(3);
		cell.setGorizontalAlignment(PdfPCell.ALIGN_RIGHT);
		table3.addCell(cell);
		table3.addCell(factura.getTotal().toString());
		
		document.add(tabla3);
	}

}
