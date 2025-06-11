
package com.tienda.service;

import com.tienda.domain.Categoria;
import java.util.List;


//define los metodos
public interface CategoriaService {
    
    public List<Categoria> getCategorias(boolean activos);
    
    
}
