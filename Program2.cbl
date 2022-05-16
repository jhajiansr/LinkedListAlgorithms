       identification division.
       program-id. Program2 as "FindCell".

       environment division.
       configuration section.

       data division.
       working-storage section.
       01 inputnum pic s9(9) value zero.
       01 topindex pic s9(9) value zero.
       01 inputnum_save pic s9(9) value zero.
       01 new_cell_list_pointer usage is pointer.
       01 list-item.
         05 list_item_data pic x(80).
         05 next-item-list-pointer usage is pointer value is null.
       01 top_list.
         05 top_data pic x(80) occurs 100 times indexed by topindex.
         05 top_next usage is pointer occurs 100 times indexed by topindex value is null.
       01 next_top_list.
         05 next_top_data pic x(80) occurs 100 times indexed by topindex.
         05 next_top_next usage is pointer occurs 100 times indexed by topindex value is null.
       01 anykey pic x(80).
       01 Targ external pic x(80).
       01 target_data pic x(80).
      * This program will locate a target value.
       procedure division using by reference next_top_list,
                                             target_data,
                                             inputnum,
                                             inputnum_save.

           perform until inputnum is equal to inputnum_save
               if next_top_data[inputnum_save] is equal to target_data then
                   display target_data
                   display "Enter any key to continue"
                   accept anykey
               end-if
               add 1 to inputnum_save


           goback.
       
       end program Program2.