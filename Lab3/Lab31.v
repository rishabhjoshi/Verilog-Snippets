module dff_sync_reset(q,d,reset,clock);
    output q;
    input d,reset,clock;
    reg q;
    
    always @(posedge clock)
    begin
        if(!reset)
           q<=1'b0;
        else
           q<=d;
       end
endmodule
           
module dff_async_reset(q,d,reset,clock);
    output q;
    input d,reset,clock;
    reg q;
    
    always @(posedge clock or negedge reset)
    begin
        if(!reset)
           q<=1'b0;
        else
           q<=d;
       end
endmodule
