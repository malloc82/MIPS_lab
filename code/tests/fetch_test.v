module fetch_test;

   pipeline PL();

   initial begin
      $display("PCSrc      BrDest         nPC          IR");
      $display("==========================================");
      #1000;
      $finish;
   end

   always @(PL.fetch_stage.PCSrc or PL.fetch_stage.BrDest or PL.fetch_stage.nPC or PL.fetch_stage.IR) begin
      $display("    %b  0x%8h  0x%8h  0x%8h", PL.fetch_stage.PCSrc, PL.fetch_stage.BrDest, PL.fetch_stage.nPC, PL.fetch_stage.IR);
   end
endmodule // fetch_test
