  .text
  .globl _ZNKSt10moneypunctIcLb0EE16do_thousands_sepEv
  .type _ZNKSt10moneypunctIcLb0EE16do_thousands_sepEv, @function

#! file-offset 0xb7580
#! rip-offset  0x77580
#! capacity    32 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE16do_thousands_sepEv:  #        0x77580  0      OPC=<label>         
  movl %edi, %edi                                #  1     0x77580  2      OPC=movl_r32_r32    
  movl %edi, %edi                                #  2     0x77582  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                    #  3     0x77584  5      OPC=movl_r32_m32    
  popq %r11                                      #  4     0x77589  2      OPC=popq_r64_1      
  movl %eax, %eax                                #  5     0x7758b  2      OPC=movl_r32_r32    
  movzbl 0x12(%r15,%rax,1), %eax                 #  6     0x7758d  6      OPC=movzbl_r32_m8   
  andl $0xffffffe0, %r11d                        #  7     0x77593  7      OPC=andl_r32_imm32  
  nop                                            #  8     0x7759a  1      OPC=nop             
  nop                                            #  9     0x7759b  1      OPC=nop             
  nop                                            #  10    0x7759c  1      OPC=nop             
  nop                                            #  11    0x7759d  1      OPC=nop             
  addq %r15, %r11                                #  12    0x7759e  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  13    0x775a1  3      OPC=jmpq_r64        
  nop                                            #  14    0x775a4  1      OPC=nop             
  nop                                            #  15    0x775a5  1      OPC=nop             
  nop                                            #  16    0x775a6  1      OPC=nop             
                                                                                              
.size _ZNKSt10moneypunctIcLb0EE16do_thousands_sepEv, .-_ZNKSt10moneypunctIcLb0EE16do_thousands_sepEv

