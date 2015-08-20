  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE5uflowEv
  .type _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE5uflowEv, @function

#! file-offset 0xdbd40
#! rip-offset  0x9bd40
#! capacity    64 bytes

# Text                                                            #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE5uflowEv:  #        0x9bd40  0      OPC=<label>         
  pushq %rbx                                                      #  1     0x9bd40  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                 #  2     0x9bd41  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                 #  3     0x9bd43  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rbx,1), %edi                                    #  4     0x9bd45  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                  #  5     0x9bd4a  2      OPC=xchgw_ax_r16    
  nop                                                             #  6     0x9bd4c  1      OPC=nop             
  nop                                                             #  7     0x9bd4d  1      OPC=nop             
  nop                                                             #  8     0x9bd4e  1      OPC=nop             
  nop                                                             #  9     0x9bd4f  1      OPC=nop             
  nop                                                             #  10    0x9bd50  1      OPC=nop             
  nop                                                             #  11    0x9bd51  1      OPC=nop             
  nop                                                             #  12    0x9bd52  1      OPC=nop             
  nop                                                             #  13    0x9bd53  1      OPC=nop             
  nop                                                             #  14    0x9bd54  1      OPC=nop             
  nop                                                             #  15    0x9bd55  1      OPC=nop             
  nop                                                             #  16    0x9bd56  1      OPC=nop             
  nop                                                             #  17    0x9bd57  1      OPC=nop             
  nop                                                             #  18    0x9bd58  1      OPC=nop             
  nop                                                             #  19    0x9bd59  1      OPC=nop             
  nop                                                             #  20    0x9bd5a  1      OPC=nop             
  callq .getwc                                                    #  21    0x9bd5b  5      OPC=callq_label     
  movl %ebx, %ebx                                                 #  22    0x9bd60  2      OPC=movl_r32_r32    
  movl %eax, 0x24(%r15,%rbx,1)                                    #  23    0x9bd62  5      OPC=movl_m32_r32    
  popq %rbx                                                       #  24    0x9bd67  1      OPC=popq_r64_1      
  popq %r11                                                       #  25    0x9bd68  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                         #  26    0x9bd6a  7      OPC=andl_r32_imm32  
  nop                                                             #  27    0x9bd71  1      OPC=nop             
  nop                                                             #  28    0x9bd72  1      OPC=nop             
  nop                                                             #  29    0x9bd73  1      OPC=nop             
  nop                                                             #  30    0x9bd74  1      OPC=nop             
  addq %r15, %r11                                                 #  31    0x9bd75  3      OPC=addq_r64_r64    
  jmpq %r11                                                       #  32    0x9bd78  3      OPC=jmpq_r64        
  nop                                                             #  33    0x9bd7b  1      OPC=nop             
  nop                                                             #  34    0x9bd7c  1      OPC=nop             
  nop                                                             #  35    0x9bd7d  1      OPC=nop             
  nop                                                             #  36    0x9bd7e  1      OPC=nop             
  nop                                                             #  37    0x9bd7f  1      OPC=nop             
  nop                                                             #  38    0x9bd80  1      OPC=nop             
  nop                                                             #  39    0x9bd81  1      OPC=nop             
  nop                                                             #  40    0x9bd82  1      OPC=nop             
  nop                                                             #  41    0x9bd83  1      OPC=nop             
  nop                                                             #  42    0x9bd84  1      OPC=nop             
  nop                                                             #  43    0x9bd85  1      OPC=nop             
  nop                                                             #  44    0x9bd86  1      OPC=nop             
                                                                                                               
.size _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE5uflowEv, .-_ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE5uflowEv

