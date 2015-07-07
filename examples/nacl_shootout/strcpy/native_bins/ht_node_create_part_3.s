  .text
  .globl ht_node_create_part_3
  .type ht_node_create_part_3, @function

#! file-offset 0x17d0
#! rip-offset  0x4017d0
#! capacity    36 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.ht_node_create_part_3:     #        0x4017d0  0      OPC=0     
  pushq %rax                #  1     0x4017d0  1      OPC=1861  
  movl $0x40844a, %edi      #  2     0x4017d1  5      OPC=1154  
  callq .perror_plt         #  3     0x4017d6  5      OPC=260   
  movl $0x408500, %ecx      #  4     0x4017db  5      OPC=1154  
  movl $0x56, %edx          #  5     0x4017e0  5      OPC=1154  
  movl $0x408459, %esi      #  6     0x4017e5  5      OPC=1154  
  movl $0x408db5, %edi      #  7     0x4017ea  5      OPC=1154  
  callq .__assert_fail_plt  #  8     0x4017ef  5      OPC=260   
                                                                
.size ht_node_create_part_3, .-ht_node_create_part_3

