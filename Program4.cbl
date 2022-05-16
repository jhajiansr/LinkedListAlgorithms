       identification division.
       program-id. Program1 as "Find Cell".

       environment division.
       configuration section.

       data division.
       working-storage section.
      *This program finds a target cell in a singly linked list.

       01 inputnum pic s9(9) value zero.
       01 new_cell_list_pointer usage is pointer.
       01 list-item.
         05 list_item_data pic x(80).
         05 next-item-list-pointer usage is pointer.
       01 top_list.
         05 top_data pic x(80).
         05 top_next usage is pointer.
       01 next_top_list.
         05 next_top_data pic x(80).
         05 next_top_next usage is pointer.

       01 anykey pic x(80).
       procedure division.

           goback.
       
       end program Program1.