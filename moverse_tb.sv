module moverse_tb;
    reg clk;
    reg reset;
    reg arriba;
    reg abajo;
    reg derecha;
    reg izquierda;
    wire [2:0] pos_x;
    wire [2:0] pos_y;

    // Instanciar el módulo moverse
    moverse uut (
        .clk(clk),
        .reset(reset),
        .arriba(arriba),
        .abajo(abajo),
        .derecha(derecha),
        .izquierda(izquierda),
        .pos_x(pos_x),
        .pos_y(pos_y)
    );

    // Generar un reloj
    always begin
        #5 clk <= ~clk;
    end

    initial begin
        clk = 0;
        reset = 1; // Inicialmente, activar el reset
        arriba = 0;
        abajo = 0;
        derecha = 0;
        izquierda = 0;

        // Simulación de movimientos
        // Mover hacia arriba
        #5 arriba = 1;
        #5 arriba = 0;
        // Mover hacia la derecha
        #5 arriba = 1;
        #5 arriba = 0;
        // Mover hacia abajo
        #5 arriba = 1;
        #5 arriba = 0;
        // Mover hacia la izquierda
        #5 arriba = 1;
        #5 arriba = 0;

        // Terminar la simulación
        $finish;
    end

    // Mostrar las señales en la simulación
    always begin
        $display("pos_x = %b, pos_y = %b", pos_x, pos_y);
    end

endmodule

