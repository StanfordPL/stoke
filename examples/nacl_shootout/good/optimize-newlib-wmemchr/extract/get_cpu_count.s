  .text
  .globl get_cpu_count
  .type get_cpu_count, @function

#! file-offset 0x63640
#! rip-offset  0x23640
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.get_cpu_count:            #        0x23640  0      OPC=<label>         
  movl $0x1, %eax          #  1     0x23640  5      OPC=movl_r32_imm32  
  popq %r11                #  2     0x23645  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  3     0x23647  7      OPC=andl_r32_imm32  
  nop                      #  4     0x2364e  1      OPC=nop             
  nop                      #  5     0x2364f  1      OPC=nop             
  nop                      #  6     0x23650  1      OPC=nop             
  nop                      #  7     0x23651  1      OPC=nop             
  addq %r15, %r11          #  8     0x23652  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x23655  3      OPC=jmpq_r64        
  nop                      #  10    0x23658  1      OPC=nop             
  nop                      #  11    0x23659  1      OPC=nop             
  nop                      #  12    0x2365a  1      OPC=nop             
  nop                      #  13    0x2365b  1      OPC=nop             
  nop                      #  14    0x2365c  1      OPC=nop             
  nop                      #  15    0x2365d  1      OPC=nop             
  nop                      #  16    0x2365e  1      OPC=nop             
  nop                      #  17    0x2365f  1      OPC=nop             
  nop                      #  18    0x23660  1      OPC=nop             
  nop                      #  19    0x23661  1      OPC=nop             
  nop                      #  20    0x23662  1      OPC=nop             
  nop                      #  21    0x23663  1      OPC=nop             
  nop                      #  22    0x23664  1      OPC=nop             
  nop                      #  23    0x23665  1      OPC=nop             
  nop                      #  24    0x23666  1      OPC=nop             
                                                                        
.size get_cpu_count, .-get_cpu_count

