package my_package;

  typedef struct packed {
    logic some_field;
  } first_struct_t;

  typedef struct packed {
    first_struct_t [1:0] some_other_field;
  } second_struct_t;

endpackage

module top_module (
  input my_package::second_struct_t a_i,
  output my_package::second_struct_t y_o
);

  assign y_o = a_i;

endmodule
