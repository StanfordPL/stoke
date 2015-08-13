  .text
  .globl valloc
  .type valloc, @function

#! file-offset 0x157a40
#! rip-offset  0x117a40
#! capacity    64 bytes

# Text                        #  Line  RIP       Bytes  Opcode             
.valloc:                      #        0x117a40  0      OPC=<label>        
  movl 0xff6110a(%rip), %ecx  #  1     0x117a40  6      OPC=movl_r32_m32   
  pushq %rbx                  #  2     0x117a46  1      OPC=pushq_r64_1    
  movl %edi, %ebx             #  3     0x117a47  2      OPC=movl_r32_r32   
  testl %ecx, %ecx            #  4     0x117a49  2      OPC=testl_r32_r32  
  jne .L_117a60               #  5     0x117a4b  2      OPC=jne_label      
  nop                         #  6     0x117a4d  1      OPC=nop            
  nop                         #  7     0x117a4e  1      OPC=nop            
  nop                         #  8     0x117a4f  1      OPC=nop            
  nop                         #  9     0x117a50  1      OPC=nop            
  nop                         #  10    0x117a51  1      OPC=nop            
  nop                         #  11    0x117a52  1      OPC=nop            
  nop                         #  12    0x117a53  1      OPC=nop            
  nop                         #  13    0x117a54  1      OPC=nop            
  nop                         #  14    0x117a55  1      OPC=nop            
  nop                         #  15    0x117a56  1      OPC=nop            
  nop                         #  16    0x117a57  1      OPC=nop            
  nop                         #  17    0x117a58  1      OPC=nop            
  nop                         #  18    0x117a59  1      OPC=nop            
  nop                         #  19    0x117a5a  1      OPC=nop            
  callq .init_mparams         #  20    0x117a5b  5      OPC=callq_label    
.L_117a60:                    #        0x117a60  0      OPC=<label>        
  movl %ebx, %esi             #  21    0x117a60  2      OPC=movl_r32_r32   
  movl 0xff610ec(%rip), %edi  #  22    0x117a62  6      OPC=movl_r32_m32   
  popq %rbx                   #  23    0x117a68  1      OPC=popq_r64_1     
  jmpq .memalign              #  24    0x117a69  5      OPC=jmpq_label_1   
  nop                         #  25    0x117a6e  1      OPC=nop            
  nop                         #  26    0x117a6f  1      OPC=nop            
  nop                         #  27    0x117a70  1      OPC=nop            
  nop                         #  28    0x117a71  1      OPC=nop            
  nop                         #  29    0x117a72  1      OPC=nop            
  nop                         #  30    0x117a73  1      OPC=nop            
  nop                         #  31    0x117a74  1      OPC=nop            
  nop                         #  32    0x117a75  1      OPC=nop            
  nop                         #  33    0x117a76  1      OPC=nop            
  nop                         #  34    0x117a77  1      OPC=nop            
  nop                         #  35    0x117a78  1      OPC=nop            
  nop                         #  36    0x117a79  1      OPC=nop            
  nop                         #  37    0x117a7a  1      OPC=nop            
  nop                         #  38    0x117a7b  1      OPC=nop            
  nop                         #  39    0x117a7c  1      OPC=nop            
  nop                         #  40    0x117a7d  1      OPC=nop            
  nop                         #  41    0x117a7e  1      OPC=nop            
  nop                         #  42    0x117a7f  1      OPC=nop            
                                                                           
.size valloc, .-valloc

