// :::::::::::::::::::::::::::::::::::::

#include <iostream>
#include <signal.h>
#include <unistd.h>
#include <sys/types.h>
#include "engine.h"

// :::::::::::::::::::::::::::::::::::::

using namespace std;
using std::cout;
using std::cin;
using std::endl;
using std::ifstream;

// :::::::::::::::::::::::::::::::::::::

#define BUF 256

int motor ();
int bDatos ();

// :::::::::::::::::::::::::::::::::::::

int main (int argc, char *argv[]) {
    
    //  ....................................
    
    system("clear");
    
    //  ....................................
    
    std::cout << ">> Ejecutando ..." << endl;
    
    //  ....................................
    
    motor();
    
    //  ....................................
        
    std::cout << ">> QuantumLab apagado!" << endl;
    
    //  ....................................
    
    bDatos();
    
    //  ....................................
    
    return EXIT_SUCCESS;
}


int motor () {

    //  ....................................
    
    Engine      *ep;
    
    //  ....................................
    
	if (!(ep = engOpen("\0"))) {
        std:cout << ">> No se puede iniciar motor de MATLAB" << endl;
		return EXIT_FAILURE;
	}    
    
    system("clear");
    
    //  ....................................
    
    engEvalString(ep, "QuantumLab");
    engEvalString(ep, "EsferaBloch");
    
    //  ....................................
    
    std::cout << ">> Ejecutando QuantumLab ..." << endl;
    std::cout << "............................" << endl;
    std::cout << " [!] No cerrar esta ventana " << endl; 
    std::cout << "     mientras corre proceso " << endl;
    std::cout << "............................" << endl;    

    wait(NULL);
        
    engClose(ep);
    system("clear");
        
    //  ....................................
    
    return EXIT_SUCCESS;
}

int bDatos () {

    //  ....................................
    
    FILE    *datos;
	datos = fopen("datos.dat","w");
	
	if (datos == NULL) {
        std::cout << "\n ERROR	[!]"<< endl;
        return EXIT_FAILURE;
	}

    //  ....................................
    
    int cero = 0;
    
    fprintf(datos,"%d %d %d \n",cero,cero,cero);
    
    fclose(datos);
    
    //  ....................................    
    
    return EXIT_SUCCESS;
}
// ::::::::::::::E O F::::::::::::::::::