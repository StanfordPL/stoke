  .text
  .globl _ZNSs3endEv
  .type _ZNSs3endEv, @function

#! file-offset 0xeebe0
#! rip-offset  0xaebe0
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNSs3endEv:                   #        0xaebe0  0      OPC=<label>         
  pushq %rbx                    #  1     0xaebe0  1      OPC=pushq_r64_1     
  movl %edi, %ebx               #  2     0xaebe1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx               #  3     0xaebe3  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  4     0xaebe5  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx         #  5     0xaebe9  3      OPC=leal_r32_m16    
  movl %edx, %edx               #  6     0xaebec  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %r11d  #  7     0xaebee  5      OPC=movl_r32_m32    
  testl %r11d, %r11d            #  8     0xaebf3  3      OPC=testl_r32_r32   
  js .L_aec20                   #  9     0xaebf6  2      OPC=js_label        
  movl %ebx, %edi               #  10    0xaebf8  2      OPC=movl_r32_r32    
  nop                           #  11    0xaebfa  1      OPC=nop             
  callq ._ZNSs12_M_leak_hardEv  #  12    0xaebfb  5      OPC=callq_label     
  movl %ebx, %ebx               #  13    0xaec00  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  14    0xaec02  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx         #  15    0xaec06  3      OPC=leal_r32_m16    
  nop                           #  16    0xaec09  1      OPC=nop             
  nop                           #  17    0xaec0a  1      OPC=nop             
  nop                           #  18    0xaec0b  1      OPC=nop             
  nop                           #  19    0xaec0c  1      OPC=nop             
  nop                           #  20    0xaec0d  1      OPC=nop             
  nop                           #  21    0xaec0e  1      OPC=nop             
  nop                           #  22    0xaec0f  1      OPC=nop             
  nop                           #  23    0xaec10  1      OPC=nop             
  nop                           #  24    0xaec11  1      OPC=nop             
  nop                           #  25    0xaec12  1      OPC=nop             
  nop                           #  26    0xaec13  1      OPC=nop             
  nop                           #  27    0xaec14  1      OPC=nop             
  nop                           #  28    0xaec15  1      OPC=nop             
  nop                           #  29    0xaec16  1      OPC=nop             
  nop                           #  30    0xaec17  1      OPC=nop             
  nop                           #  31    0xaec18  1      OPC=nop             
  nop                           #  32    0xaec19  1      OPC=nop             
  nop                           #  33    0xaec1a  1      OPC=nop             
  nop                           #  34    0xaec1b  1      OPC=nop             
  nop                           #  35    0xaec1c  1      OPC=nop             
  nop                           #  36    0xaec1d  1      OPC=nop             
  nop                           #  37    0xaec1e  1      OPC=nop             
  nop                           #  38    0xaec1f  1      OPC=nop             
.L_aec20:                       #        0xaec20  0      OPC=<label>         
  popq %rbx                     #  39    0xaec20  1      OPC=popq_r64_1      
  popq %r11                     #  40    0xaec21  2      OPC=popq_r64_1      
  movl %edx, %edx               #  41    0xaec23  2      OPC=movl_r32_r32    
  addl (%r15,%rdx,1), %eax      #  42    0xaec25  4      OPC=addl_r32_m32    
  andl $0xffffffe0, %r11d       #  43    0xaec29  7      OPC=andl_r32_imm32  
  nop                           #  44    0xaec30  1      OPC=nop             
  nop                           #  45    0xaec31  1      OPC=nop             
  nop                           #  46    0xaec32  1      OPC=nop             
  nop                           #  47    0xaec33  1      OPC=nop             
  addq %r15, %r11               #  48    0xaec34  3      OPC=addq_r64_r64    
  jmpq %r11                     #  49    0xaec37  3      OPC=jmpq_r64        
  nop                           #  50    0xaec3a  1      OPC=nop             
  nop                           #  51    0xaec3b  1      OPC=nop             
  nop                           #  52    0xaec3c  1      OPC=nop             
  nop                           #  53    0xaec3d  1      OPC=nop             
  nop                           #  54    0xaec3e  1      OPC=nop             
  nop                           #  55    0xaec3f  1      OPC=nop             
  nop                           #  56    0xaec40  1      OPC=nop             
  nop                           #  57    0xaec41  1      OPC=nop             
  nop                           #  58    0xaec42  1      OPC=nop             
  nop                           #  59    0xaec43  1      OPC=nop             
  nop                           #  60    0xaec44  1      OPC=nop             
  nop                           #  61    0xaec45  1      OPC=nop             
  nop                           #  62    0xaec46  1      OPC=nop             
                                                                             
.size _ZNSs3endEv, .-_ZNSs3endEv

