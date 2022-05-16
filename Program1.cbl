       program-id. Program1 as "BuildLinkedLisrLinkedListAlgorithm.Program1".
       data division.
       working-storage section.
      * All algorithms in these programs are from "Essential Algorithms", by Rod Stephens.
      *This program builds singly linked lists.  
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
       linkage section.
       procedure division.
           display "Enter a number".
           accept inputnum.
           move inputnum to inputnum_save.

           display "The number entered is " inputnum.
           
           perform until inputnum is zero
               allocate length of list-item CHARACTERS loc 31 returning new_cell_list_pointer
               move new_cell_list_pointer to next-item-list-pointer
               display 'Enter a Value for the list'
               accept anykey
               move anykey to list_item_data
               display list_item_data
               display "Press any key to continue"
               accept anykey

               
               
                move new_cell_list_pointer to top_next[inputnum]
                move list_item_data to top_data[inputnum]
                subtract 1 from inputnum
               end-perform.

      *    call  FindTargetCellsInLinkedLists by reference top_list, anykey
      *    end-call.

      *    call Targ using by reference top_list,
      *                                                       anykey
      *    end-call.
      * This code segment will locate a target value.
           display "Emter target value".
           accept target_data.
           move inputnum_save to inputnum.
           move 1 to inputnum_save.

           perform until inputnum is equal to inputnum_save
               if top_data[inputnum_save] is equal to target_data then
                   display target_data
                   display "Enter any key to continue"
                   accept anykey
               end-if
               add 1 to inputnum_save

               
               
               
                   
               
           end-perform.
      * Findcell will locate target in cell before the target.
           call "findcell" using by reference next_top_list, target_data, inputnum, inputnum_save
           end-call.
           goback.
       end program Program1.
