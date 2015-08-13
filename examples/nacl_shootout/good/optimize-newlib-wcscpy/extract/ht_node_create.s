  .text
  .globl ht_node_create
  .type ht_node_create, @function

#! file-offset 0x63820
#! rip-offset  0x23820
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.ht_node_create:            #        0x23820  0      OPC=<label>         
  pushq %rbx                #  1     0x23820  1      OPC=pushq_r64_1     
  movq %rdi, %rbx           #  2     0x23821  3      OPC=movq_r64_r64    
  movl $0x10, %esi          #  3     0x23824  5      OPC=movl_r32_imm32  
  movl $0x1, %edi           #  4     0x23829  5      OPC=movl_r32_imm32  
  nop                       #  5     0x2382e  1      OPC=nop             
  nop                       #  6     0x2382f  1      OPC=nop             
  nop                       #  7     0x23830  1      OPC=nop             
  nop                       #  8     0x23831  1      OPC=nop             
  nop                       #  9     0x23832  1      OPC=nop             
  nop                       #  10    0x23833  1      OPC=nop             
  nop                       #  11    0x23834  1      OPC=nop             
  nop                       #  12    0x23835  1      OPC=nop             
  nop                       #  13    0x23836  1      OPC=nop             
  nop                       #  14    0x23837  1      OPC=nop             
  nop                       #  15    0x23838  1      OPC=nop             
  nop                       #  16    0x23839  1      OPC=nop             
  nop                       #  17    0x2383a  1      OPC=nop             
  callq .calloc             #  18    0x2383b  5      OPC=callq_label     
  movl %eax, %eax           #  19    0x23840  2      OPC=movl_r32_r32    
  testq %rax, %rax          #  20    0x23842  3      OPC=testq_r64_r64   
  je .L_23860               #  21    0x23845  2      OPC=je_label        
  movl %eax, %eax           #  22    0x23847  2      OPC=movl_r32_r32    
  movq %rbx, (%r15,%rax,1)  #  23    0x23849  4      OPC=movq_m64_r64    
  popq %rbx                 #  24    0x2384d  1      OPC=popq_r64_1      
  popq %r11                 #  25    0x2384e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  26    0x23850  7      OPC=andl_r32_imm32  
  nop                       #  27    0x23857  1      OPC=nop             
  nop                       #  28    0x23858  1      OPC=nop             
  nop                       #  29    0x23859  1      OPC=nop             
  nop                       #  30    0x2385a  1      OPC=nop             
  addq %r15, %r11           #  31    0x2385b  3      OPC=addq_r64_r64    
  jmpq %r11                 #  32    0x2385e  3      OPC=jmpq_r64        
  nop                       #  33    0x23861  1      OPC=nop             
  nop                       #  34    0x23862  1      OPC=nop             
  nop                       #  35    0x23863  1      OPC=nop             
  nop                       #  36    0x23864  1      OPC=nop             
  nop                       #  37    0x23865  1      OPC=nop             
  nop                       #  38    0x23866  1      OPC=nop             
.L_23860:                   #        0x23867  0      OPC=<label>         
  movl $0x1002048a, %edi    #  39    0x23867  5      OPC=movl_r32_imm32  
  nop                       #  40    0x2386c  1      OPC=nop             
  nop                       #  41    0x2386d  1      OPC=nop             
  nop                       #  42    0x2386e  1      OPC=nop             
  nop                       #  43    0x2386f  1      OPC=nop             
  nop                       #  44    0x23870  1      OPC=nop             
  nop                       #  45    0x23871  1      OPC=nop             
  nop                       #  46    0x23872  1      OPC=nop             
  nop                       #  47    0x23873  1      OPC=nop             
  nop                       #  48    0x23874  1      OPC=nop             
  nop                       #  49    0x23875  1      OPC=nop             
  nop                       #  50    0x23876  1      OPC=nop             
  nop                       #  51    0x23877  1      OPC=nop             
  nop                       #  52    0x23878  1      OPC=nop             
  nop                       #  53    0x23879  1      OPC=nop             
  nop                       #  54    0x2387a  1      OPC=nop             
  nop                       #  55    0x2387b  1      OPC=nop             
  nop                       #  56    0x2387c  1      OPC=nop             
  nop                       #  57    0x2387d  1      OPC=nop             
  nop                       #  58    0x2387e  1      OPC=nop             
  nop                       #  59    0x2387f  1      OPC=nop             
  nop                       #  60    0x23880  1      OPC=nop             
  nop                       #  61    0x23881  1      OPC=nop             
  callq .perror             #  62    0x23882  5      OPC=callq_label     
  movl $0x1003a062, %ecx    #  63    0x23887  5      OPC=movl_r32_imm32  
  movl $0x1002054c, %edx    #  64    0x2388c  5      OPC=movl_r32_imm32  
  movl $0x56, %esi          #  65    0x23891  5      OPC=movl_r32_imm32  
  movl $0x10020499, %edi    #  66    0x23896  5      OPC=movl_r32_imm32  
  nop                       #  67    0x2389b  1      OPC=nop             
  nop                       #  68    0x2389c  1      OPC=nop             
  nop                       #  69    0x2389d  1      OPC=nop             
  nop                       #  70    0x2389e  1      OPC=nop             
  nop                       #  71    0x2389f  1      OPC=nop             
  nop                       #  72    0x238a0  1      OPC=nop             
  nop                       #  73    0x238a1  1      OPC=nop             
  callq .__assert_func      #  74    0x238a2  5      OPC=callq_label     
                                                                         
.size ht_node_create, .-ht_node_create

