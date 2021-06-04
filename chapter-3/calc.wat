(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param i32 i32 i32)))
  (type (;4;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32) (result i64)))
  (type (;6;) (func (param i32)))
  (type (;7;) (func (param i32) (result i32)))
  (type (;8;) (func (param i32 i32 i32 i32)))
  (type (;9;) (func))
  (type (;10;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;11;) (func (param i64 i32 i32) (result i32)))
  (func $add (type 2) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.add)
  (func $div (type 2) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 1
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const -2147483648
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.const -1
        i32.eq
        br_if 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.div_s
      return
    end
    i32.const 1048608
    i32.const 31
    i32.const 1048588
    call $_ZN4core9panicking5panic17hf103660e9eaae571E
    unreachable)
  (func $sub (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.sub)
  (func $mul (type 2) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.mul)
  (func $mod (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.rem_s)
  (func $__rust_alloc (type 2) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 1
    call $__rdl_alloc
    local.set 2
    local.get 2
    return)
  (func $__rust_dealloc (type 3) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $__rdl_dealloc
    return)
  (func $__rust_realloc (type 4) (param i32 i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $__rdl_realloc
    local.set 4
    local.get 4
    return)
  (func $_ZN115_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hf6168122dbd221e8E (type 3) (param i32 i32 i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 3
        local.get 0
        i32.const 8
        i32.add
        i32.load
        local.tee 4
        i32.sub
        local.get 2
        local.get 1
        i32.sub
        local.tee 2
        i32.lt_u
        br_if 0 (;@2;)
        local.get 0
        i32.load
        local.set 3
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            local.get 2
            i32.add
            local.tee 5
            local.get 4
            i32.lt_u
            br_if 0 (;@4;)
            local.get 3
            i32.const 1
            i32.shl
            local.tee 4
            local.get 5
            local.get 4
            local.get 5
            i32.gt_u
            select
            local.tee 4
            i32.const 8
            local.get 4
            i32.const 8
            i32.gt_u
            select
            local.set 4
            block  ;; label = @5
              local.get 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 4
              i32.const 0
              i32.lt_s
              br_if 1 (;@4;)
              local.get 0
              i32.load
              local.tee 5
              i32.eqz
              br_if 2 (;@3;)
              local.get 5
              local.get 3
              i32.const 1
              local.get 4
              call $__rust_realloc
              local.set 3
              br 3 (;@2;)
            end
            local.get 4
            i32.const 0
            i32.ge_s
            br_if 1 (;@3;)
          end
          call $_ZN5alloc7raw_vec17capacity_overflow17hd09dcfb79c25058cE
          unreachable
        end
        local.get 4
        i32.const 1
        call $__rust_alloc
        local.set 3
      end
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        i32.store
        local.get 0
        i32.const 4
        i32.add
        local.get 4
        i32.store
        local.get 0
        i32.const 8
        i32.add
        i32.load
        local.set 4
        br 1 (;@1;)
      end
      local.get 4
      i32.const 1
      call $_ZN5alloc5alloc18handle_alloc_error17h0d29a13af080ef31E
      unreachable
    end
    local.get 3
    local.get 4
    i32.add
    local.get 1
    local.get 2
    call $memcpy
    drop
    local.get 0
    i32.const 8
    i32.add
    local.tee 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h0a5da9a44a1cbff0E (type 5) (param i32) (result i64)
    i64.const -6438272686846998974)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hd179329e2d7eb90bE (type 5) (param i32) (result i64)
    i64.const 5078313853150524003)
  (func $_ZN4core3ptr13drop_in_place17h02f38816662c795fE (type 6) (param i32))
  (func $_ZN4core3ptr13drop_in_place17h068bd46394458882E (type 6) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr13drop_in_place17hf5f9449f5a7fe52cE (type 6) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN4core6option15Option$LT$T$GT$6unwrap17h9004d56e63ad9d7bE (type 2) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 1048680
      i32.const 43
      local.get 1
      call $_ZN4core9panicking5panic17hf103660e9eaae571E
      unreachable
    end
    local.get 0)
  (func $_ZN4core6option15Option$LT$T$GT$6unwrap17he702acd64c712c4dE (type 7) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 1048680
      i32.const 43
      i32.const 1048768
      call $_ZN4core9panicking5panic17hf103660e9eaae571E
      unreachable
    end
    local.get 0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h23408ee4772422faE (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.const 128
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 0
                  i32.store offset=12
                  local.get 1
                  i32.const 2048
                  i32.lt_u
                  br_if 1 (;@6;)
                  local.get 2
                  i32.const 12
                  i32.add
                  local.set 3
                  block  ;; label = @8
                    local.get 1
                    i32.const 65536
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 2
                    local.get 1
                    i32.const 63
                    i32.and
                    i32.const 128
                    i32.or
                    i32.store8 offset=14
                    local.get 2
                    local.get 1
                    i32.const 12
                    i32.shr_u
                    i32.const 224
                    i32.or
                    i32.store8 offset=12
                    local.get 2
                    local.get 1
                    i32.const 6
                    i32.shr_u
                    i32.const 63
                    i32.and
                    i32.const 128
                    i32.or
                    i32.store8 offset=13
                    i32.const 3
                    local.set 1
                    br 6 (;@2;)
                  end
                  local.get 2
                  local.get 1
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=15
                  local.get 2
                  local.get 1
                  i32.const 18
                  i32.shr_u
                  i32.const 240
                  i32.or
                  i32.store8 offset=12
                  local.get 2
                  local.get 1
                  i32.const 6
                  i32.shr_u
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=14
                  local.get 2
                  local.get 1
                  i32.const 12
                  i32.shr_u
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=13
                  i32.const 4
                  local.set 1
                  br 5 (;@2;)
                end
                block  ;; label = @7
                  local.get 0
                  i32.load offset=8
                  local.tee 3
                  local.get 0
                  i32.const 4
                  i32.add
                  i32.load
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 0
                  i32.load
                  local.set 4
                  br 4 (;@3;)
                end
                block  ;; label = @7
                  local.get 3
                  i32.const 1
                  i32.add
                  local.tee 4
                  local.get 3
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const 1
                  i32.shl
                  local.tee 5
                  local.get 4
                  local.get 5
                  local.get 4
                  i32.gt_u
                  select
                  local.tee 4
                  i32.const 8
                  local.get 4
                  i32.const 8
                  i32.gt_u
                  select
                  local.set 5
                  block  ;; label = @8
                    local.get 3
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 5
                    i32.const 0
                    i32.lt_s
                    br_if 1 (;@7;)
                    local.get 0
                    i32.load
                    local.tee 4
                    i32.eqz
                    br_if 3 (;@5;)
                    local.get 4
                    local.get 3
                    i32.const 1
                    local.get 5
                    call $__rust_realloc
                    local.set 4
                    br 4 (;@4;)
                  end
                  local.get 5
                  i32.const 0
                  i32.ge_s
                  br_if 2 (;@5;)
                end
                call $_ZN5alloc7raw_vec17capacity_overflow17hd09dcfb79c25058cE
                unreachable
              end
              local.get 2
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=13
              local.get 2
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 192
              i32.or
              i32.store8 offset=12
              local.get 2
              i32.const 12
              i32.add
              local.set 3
              i32.const 2
              local.set 1
              br 3 (;@2;)
            end
            local.get 5
            i32.const 1
            call $__rust_alloc
            local.set 4
          end
          block  ;; label = @4
            local.get 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 4
            i32.store
            local.get 0
            i32.const 4
            i32.add
            local.get 5
            i32.store
            local.get 0
            i32.load offset=8
            local.set 3
            br 1 (;@3;)
          end
          local.get 5
          i32.const 1
          call $_ZN5alloc5alloc18handle_alloc_error17h0d29a13af080ef31E
          unreachable
        end
        local.get 4
        local.get 3
        i32.add
        local.get 1
        i32.store8
        local.get 0
        local.get 0
        i32.load offset=8
        i32.const 1
        i32.add
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 0
      local.get 3
      local.get 3
      local.get 1
      i32.add
      call $_ZN115_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hf6168122dbd221e8E
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    i32.const 0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hd82968a31c237e7fE (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1048640
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17hafbb0a7aa3401794E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h59e051f7d98a1937E (type 1) (param i32 i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 1
    local.get 2
    i32.add
    call $_ZN115_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hf6168122dbd221e8E
    i32.const 0)
  (func $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17he811f0bd07938b42E (type 6) (param i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 1
    local.get 0
    i64.load align=4
    i64.store
    local.get 1
    call $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17hc5eba7f0030e8f4fE
    unreachable)
  (func $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17hc5eba7f0030e8f4fE (type 6) (param i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 0
    i32.store offset=4
    local.get 1
    local.get 0
    i32.load
    i32.store
    local.get 1
    i32.const 1048784
    local.get 0
    i32.load offset=4
    call $_ZN4core5panic9PanicInfo7message17h7e4e229b163b9946E
    local.get 0
    i32.load offset=8
    call $_ZN3std9panicking20rust_panic_with_hook17hc5713da015ebaa19E
    unreachable)
  (func $_ZN3std5alloc24default_alloc_error_hook17hfecc4245dce2d452E (type 0) (param i32 i32))
  (func $rust_oom (type 0) (param i32 i32)
    (local i32)
    local.get 0
    local.get 1
    i32.const 0
    i32.load offset=1049232
    local.tee 2
    i32.const 1
    local.get 2
    select
    call_indirect (type 0)
    unreachable
    unreachable)
  (func $__rdl_alloc (type 2) (param i32 i32) (result i32)
    block  ;; label = @1
      i32.const 1049252
      call $_ZN8dlmalloc8dlmalloc8Dlmalloc16malloc_alignment17h653ecf4deb894531E
      local.get 1
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 1049252
      local.get 1
      local.get 0
      call $_ZN8dlmalloc8dlmalloc8Dlmalloc8memalign17h1569028eb68743b4E
      return
    end
    i32.const 1049252
    local.get 0
    call $_ZN8dlmalloc8dlmalloc8Dlmalloc6malloc17h819baa7bf6511e91E)
  (func $__rdl_dealloc (type 3) (param i32 i32 i32)
    i32.const 1049252
    local.get 0
    call $_ZN8dlmalloc8dlmalloc8Dlmalloc4free17h8125361f3b57096aE)
  (func $__rdl_realloc (type 4) (param i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        i32.const 1049252
        call $_ZN8dlmalloc8dlmalloc8Dlmalloc16malloc_alignment17h653ecf4deb894531E
        local.get 2
        i32.ge_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            i32.const 1049252
            call $_ZN8dlmalloc8dlmalloc8Dlmalloc16malloc_alignment17h653ecf4deb894531E
            local.get 2
            i32.ge_u
            br_if 0 (;@4;)
            i32.const 1049252
            local.get 2
            local.get 3
            call $_ZN8dlmalloc8dlmalloc8Dlmalloc8memalign17h1569028eb68743b4E
            local.set 2
            br 1 (;@3;)
          end
          i32.const 1049252
          local.get 3
          call $_ZN8dlmalloc8dlmalloc8Dlmalloc6malloc17h819baa7bf6511e91E
          local.set 2
        end
        local.get 2
        br_if 1 (;@1;)
        i32.const 0
        return
      end
      i32.const 1049252
      local.get 0
      local.get 3
      call $_ZN8dlmalloc8dlmalloc8Dlmalloc7realloc17h1d2bcca6ad3ca8d2E
      return
    end
    local.get 2
    local.get 0
    local.get 3
    local.get 1
    local.get 1
    local.get 3
    i32.gt_u
    select
    call $memcpy
    local.set 2
    i32.const 1049252
    local.get 0
    call $_ZN8dlmalloc8dlmalloc8Dlmalloc4free17h8125361f3b57096aE
    local.get 2)
  (func $rust_begin_unwind (type 6) (param i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    call $_ZN4core5panic9PanicInfo8location17hdc237791919cdce2E
    i32.const 1048752
    call $_ZN4core6option15Option$LT$T$GT$6unwrap17h9004d56e63ad9d7bE
    local.set 2
    local.get 0
    call $_ZN4core5panic9PanicInfo7message17h7e4e229b163b9946E
    call $_ZN4core6option15Option$LT$T$GT$6unwrap17he702acd64c712c4dE
    local.set 3
    local.get 1
    local.get 2
    i32.store offset=8
    local.get 1
    local.get 0
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 1
    call $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17he811f0bd07938b42E
    unreachable)
  (func $_ZN3std9panicking20rust_panic_with_hook17hc5713da015ebaa19E (type 8) (param i32 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    global.set 0
    i32.const 1
    local.set 5
    i32.const 0
    i32.const 0
    i32.load offset=1049248
    i32.const 1
    i32.add
    i32.store offset=1049248
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1049704
            i32.const 1
            i32.eq
            br_if 0 (;@4;)
            i32.const 0
            i64.const 4294967297
            i64.store offset=1049704
            br 1 (;@3;)
          end
          i32.const 0
          i32.const 0
          i32.load offset=1049708
          i32.const 1
          i32.add
          local.tee 5
          i32.store offset=1049708
          local.get 5
          i32.const 2
          i32.gt_u
          br_if 1 (;@2;)
        end
        local.get 4
        local.get 3
        i32.store offset=28
        local.get 4
        local.get 2
        i32.store offset=24
        local.get 4
        i32.const 1048664
        i32.store offset=20
        local.get 4
        i32.const 1048664
        i32.store offset=16
        i32.const 0
        i32.load offset=1049236
        local.tee 2
        i32.const -1
        i32.le_s
        br_if 0 (;@2;)
        i32.const 0
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        i32.store offset=1049236
        block  ;; label = @3
          i32.const 0
          i32.load offset=1049244
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1049240
          local.set 2
          local.get 4
          i32.const 8
          i32.add
          local.get 0
          local.get 1
          i32.load offset=16
          call_indirect (type 0)
          local.get 4
          local.get 4
          i64.load offset=8
          i64.store offset=16
          local.get 2
          local.get 4
          i32.const 16
          i32.add
          local.get 3
          i32.load offset=12
          call_indirect (type 0)
          i32.const 0
          i32.load offset=1049236
          local.set 2
        end
        i32.const 0
        local.get 2
        i32.const -1
        i32.add
        i32.store offset=1049236
        local.get 5
        i32.const 1
        i32.le_u
        br_if 1 (;@1;)
      end
      unreachable
      unreachable
    end
    local.get 0
    local.get 1
    call $rust_panic
    unreachable)
  (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h7e1225caf27b6ac8E (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      local.get 1
      i32.load offset=4
      local.tee 3
      br_if 0 (;@1;)
      local.get 1
      i32.const 4
      i32.add
      local.set 3
      local.get 1
      i32.load
      local.set 4
      local.get 2
      i32.const 0
      i32.store offset=32
      local.get 2
      i64.const 1
      i64.store offset=24
      local.get 2
      local.get 2
      i32.const 24
      i32.add
      i32.store offset=36
      local.get 2
      i32.const 40
      i32.add
      i32.const 16
      i32.add
      local.get 4
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 40
      i32.add
      i32.const 8
      i32.add
      local.get 4
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 4
      i64.load align=4
      i64.store offset=40
      local.get 2
      i32.const 36
      i32.add
      i32.const 1048640
      local.get 2
      i32.const 40
      i32.add
      call $_ZN4core3fmt5write17hafbb0a7aa3401794E
      drop
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.tee 4
      local.get 2
      i32.load offset=32
      i32.store
      local.get 2
      local.get 2
      i64.load offset=24
      i64.store offset=8
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 8
        i32.add
        i32.load
        local.tee 6
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        local.get 6
        i32.const 1
        call $__rust_dealloc
      end
      local.get 3
      local.get 2
      i64.load offset=8
      i64.store align=4
      local.get 3
      i32.const 8
      i32.add
      local.get 4
      i32.load
      i32.store
      local.get 3
      i32.load
      local.set 3
    end
    local.get 1
    i32.const 1
    i32.store offset=4
    local.get 1
    i32.const 12
    i32.add
    i32.load
    local.set 4
    local.get 1
    i32.const 8
    i32.add
    local.tee 1
    i32.load
    local.set 5
    local.get 1
    i64.const 0
    i64.store align=4
    block  ;; label = @1
      i32.const 12
      i32.const 4
      call $__rust_alloc
      local.tee 1
      br_if 0 (;@1;)
      i32.const 12
      i32.const 4
      call $_ZN5alloc5alloc18handle_alloc_error17h0d29a13af080ef31E
      unreachable
    end
    local.get 1
    local.get 4
    i32.store offset=8
    local.get 1
    local.get 5
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 0
    i32.const 1048804
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 64
    i32.add
    global.set 0)
  (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h0bf3b03be36535b6E (type 0) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.const 4
    i32.add
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load offset=4
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.set 4
      local.get 2
      i32.const 0
      i32.store offset=32
      local.get 2
      i64.const 1
      i64.store offset=24
      local.get 2
      local.get 2
      i32.const 24
      i32.add
      i32.store offset=36
      local.get 2
      i32.const 40
      i32.add
      i32.const 16
      i32.add
      local.get 4
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 40
      i32.add
      i32.const 8
      i32.add
      local.get 4
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 4
      i64.load align=4
      i64.store offset=40
      local.get 2
      i32.const 36
      i32.add
      i32.const 1048640
      local.get 2
      i32.const 40
      i32.add
      call $_ZN4core3fmt5write17hafbb0a7aa3401794E
      drop
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.tee 4
      local.get 2
      i32.load offset=32
      i32.store
      local.get 2
      local.get 2
      i64.load offset=24
      i64.store offset=8
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 8
        i32.add
        i32.load
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        local.get 1
        i32.const 1
        call $__rust_dealloc
      end
      local.get 3
      local.get 2
      i64.load offset=8
      i64.store align=4
      local.get 3
      i32.const 8
      i32.add
      local.get 4
      i32.load
      i32.store
    end
    local.get 0
    i32.const 1048804
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
    local.get 2
    i32.const 64
    i32.add
    global.set 0)
  (func $rust_panic (type 0) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    call $__rust_start_panic
    drop
    unreachable
    unreachable)
  (func $__rust_start_panic (type 7) (param i32) (result i32)
    unreachable
    unreachable)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc16malloc_alignment17h653ecf4deb894531E (type 7) (param i32) (result i32)
    i32.const 8)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc6malloc17h819baa7bf6511e91E (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 245
              i32.lt_u
              br_if 0 (;@5;)
              i32.const 0
              local.set 2
              local.get 1
              i32.const -65587
              i32.ge_u
              br_if 4 (;@1;)
              local.get 1
              i32.const 11
              i32.add
              local.tee 1
              i32.const -8
              i32.and
              local.set 3
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.tee 4
              i32.eqz
              br_if 1 (;@4;)
              i32.const 0
              local.set 5
              block  ;; label = @6
                local.get 1
                i32.const 8
                i32.shr_u
                local.tee 1
                i32.eqz
                br_if 0 (;@6;)
                i32.const 31
                local.set 5
                local.get 3
                i32.const 16777215
                i32.gt_u
                br_if 0 (;@6;)
                local.get 3
                i32.const 6
                local.get 1
                i32.clz
                local.tee 1
                i32.sub
                i32.const 31
                i32.and
                i32.shr_u
                i32.const 1
                i32.and
                local.get 1
                i32.const 1
                i32.shl
                i32.sub
                i32.const 62
                i32.add
                local.set 5
              end
              i32.const 0
              local.get 3
              i32.sub
              local.set 2
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    local.get 5
                    i32.const 2
                    i32.shl
                    i32.add
                    i32.const 272
                    i32.add
                    i32.load
                    local.tee 1
                    i32.eqz
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 6
                    local.get 3
                    i32.const 0
                    i32.const 25
                    local.get 5
                    i32.const 1
                    i32.shr_u
                    i32.sub
                    i32.const 31
                    i32.and
                    local.get 5
                    i32.const 31
                    i32.eq
                    select
                    i32.shl
                    local.set 7
                    i32.const 0
                    local.set 8
                    loop  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        i32.const 4
                        i32.add
                        i32.load
                        i32.const -8
                        i32.and
                        local.tee 9
                        local.get 3
                        i32.lt_u
                        br_if 0 (;@10;)
                        local.get 9
                        local.get 3
                        i32.sub
                        local.tee 9
                        local.get 2
                        i32.ge_u
                        br_if 0 (;@10;)
                        local.get 9
                        local.set 2
                        local.get 1
                        local.set 8
                        local.get 9
                        br_if 0 (;@10;)
                        i32.const 0
                        local.set 2
                        local.get 1
                        local.set 8
                        br 3 (;@7;)
                      end
                      local.get 1
                      i32.const 20
                      i32.add
                      i32.load
                      local.tee 9
                      local.get 6
                      local.get 9
                      local.get 1
                      local.get 7
                      i32.const 29
                      i32.shr_u
                      i32.const 4
                      i32.and
                      i32.add
                      i32.const 16
                      i32.add
                      i32.load
                      local.tee 1
                      i32.ne
                      select
                      local.get 6
                      local.get 9
                      select
                      local.set 6
                      local.get 7
                      i32.const 1
                      i32.shl
                      local.set 7
                      local.get 1
                      br_if 0 (;@9;)
                    end
                    block  ;; label = @9
                      local.get 6
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 6
                      local.set 1
                      br 2 (;@7;)
                    end
                    local.get 8
                    br_if 2 (;@6;)
                  end
                  i32.const 0
                  local.set 8
                  i32.const 2
                  local.get 5
                  i32.const 31
                  i32.and
                  i32.shl
                  local.tee 1
                  i32.const 0
                  local.get 1
                  i32.sub
                  i32.or
                  local.get 4
                  i32.and
                  local.tee 1
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 0
                  local.get 1
                  i32.const 0
                  local.get 1
                  i32.sub
                  i32.and
                  i32.ctz
                  i32.const 2
                  i32.shl
                  i32.add
                  i32.const 272
                  i32.add
                  i32.load
                  local.tee 1
                  i32.eqz
                  br_if 3 (;@4;)
                end
                loop  ;; label = @7
                  local.get 1
                  i32.const 4
                  i32.add
                  i32.load
                  i32.const -8
                  i32.and
                  local.tee 6
                  local.get 3
                  i32.ge_u
                  local.get 6
                  local.get 3
                  i32.sub
                  local.tee 9
                  local.get 2
                  i32.lt_u
                  i32.and
                  local.set 7
                  block  ;; label = @8
                    local.get 1
                    i32.load offset=16
                    local.tee 6
                    br_if 0 (;@8;)
                    local.get 1
                    i32.const 20
                    i32.add
                    i32.load
                    local.set 6
                  end
                  local.get 1
                  local.get 8
                  local.get 7
                  select
                  local.set 8
                  local.get 9
                  local.get 2
                  local.get 7
                  select
                  local.set 2
                  local.get 6
                  local.set 1
                  local.get 6
                  br_if 0 (;@7;)
                end
                local.get 8
                i32.eqz
                br_if 2 (;@4;)
              end
              block  ;; label = @6
                local.get 0
                i32.load offset=400
                local.tee 1
                local.get 3
                i32.lt_u
                br_if 0 (;@6;)
                local.get 2
                local.get 1
                local.get 3
                i32.sub
                i32.ge_u
                br_if 2 (;@4;)
              end
              local.get 8
              i32.load offset=24
              local.set 5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 8
                    i32.load offset=12
                    local.tee 6
                    local.get 8
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 8
                    i32.const 20
                    i32.const 16
                    local.get 8
                    i32.const 20
                    i32.add
                    local.tee 6
                    i32.load
                    local.tee 7
                    select
                    i32.add
                    i32.load
                    local.tee 1
                    br_if 1 (;@7;)
                    i32.const 0
                    local.set 6
                    br 2 (;@6;)
                  end
                  local.get 8
                  i32.load offset=8
                  local.tee 1
                  local.get 6
                  i32.store offset=12
                  local.get 6
                  local.get 1
                  i32.store offset=8
                  br 1 (;@6;)
                end
                local.get 6
                local.get 8
                i32.const 16
                i32.add
                local.get 7
                select
                local.set 7
                loop  ;; label = @7
                  local.get 7
                  local.set 9
                  block  ;; label = @8
                    local.get 1
                    local.tee 6
                    i32.const 20
                    i32.add
                    local.tee 7
                    i32.load
                    local.tee 1
                    br_if 0 (;@8;)
                    local.get 6
                    i32.const 16
                    i32.add
                    local.set 7
                    local.get 6
                    i32.load offset=16
                    local.set 1
                  end
                  local.get 1
                  br_if 0 (;@7;)
                end
                local.get 9
                i32.const 0
                i32.store
              end
              block  ;; label = @6
                local.get 5
                i32.eqz
                br_if 0 (;@6;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    local.get 8
                    i32.load offset=28
                    i32.const 2
                    i32.shl
                    i32.add
                    i32.const 272
                    i32.add
                    local.tee 1
                    i32.load
                    local.get 8
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 5
                    i32.const 16
                    i32.const 20
                    local.get 5
                    i32.load offset=16
                    local.get 8
                    i32.eq
                    select
                    i32.add
                    local.get 6
                    i32.store
                    local.get 6
                    i32.eqz
                    br_if 2 (;@6;)
                    br 1 (;@7;)
                  end
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 6
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 4
                  i32.add
                  local.tee 1
                  local.get 1
                  i32.load
                  i32.const -2
                  local.get 8
                  i32.load offset=28
                  i32.rotl
                  i32.and
                  i32.store
                  br 1 (;@6;)
                end
                local.get 6
                local.get 5
                i32.store offset=24
                block  ;; label = @7
                  local.get 8
                  i32.load offset=16
                  local.tee 1
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 6
                  local.get 1
                  i32.store offset=16
                  local.get 1
                  local.get 6
                  i32.store offset=24
                end
                local.get 8
                i32.const 20
                i32.add
                i32.load
                local.tee 1
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                i32.const 20
                i32.add
                local.get 1
                i32.store
                local.get 1
                local.get 6
                i32.store offset=24
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.const 16
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 8
                  local.get 3
                  i32.const 3
                  i32.or
                  i32.store offset=4
                  local.get 8
                  local.get 3
                  i32.add
                  local.tee 3
                  local.get 2
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 3
                  local.get 2
                  i32.add
                  local.get 2
                  i32.store
                  block  ;; label = @8
                    local.get 2
                    i32.const 256
                    i32.lt_u
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 2
                        i32.const 8
                        i32.shr_u
                        local.tee 6
                        br_if 0 (;@10;)
                        i32.const 0
                        local.set 1
                        br 1 (;@9;)
                      end
                      i32.const 31
                      local.set 1
                      local.get 2
                      i32.const 16777215
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 2
                      i32.const 6
                      local.get 6
                      i32.clz
                      local.tee 1
                      i32.sub
                      i32.const 31
                      i32.and
                      i32.shr_u
                      i32.const 1
                      i32.and
                      local.get 1
                      i32.const 1
                      i32.shl
                      i32.sub
                      i32.const 62
                      i32.add
                      local.set 1
                    end
                    local.get 3
                    i64.const 0
                    i64.store offset=16 align=4
                    local.get 3
                    local.get 1
                    i32.store offset=28
                    local.get 0
                    local.get 1
                    i32.const 2
                    i32.shl
                    i32.add
                    i32.const 272
                    i32.add
                    local.set 6
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 0
                              i32.const 4
                              i32.add
                              local.tee 7
                              i32.load
                              local.tee 9
                              i32.const 1
                              local.get 1
                              i32.const 31
                              i32.and
                              i32.shl
                              local.tee 0
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 6
                              i32.load
                              local.tee 7
                              i32.const 4
                              i32.add
                              i32.load
                              i32.const -8
                              i32.and
                              local.get 2
                              i32.ne
                              br_if 1 (;@12;)
                              local.get 7
                              local.set 1
                              br 2 (;@11;)
                            end
                            local.get 7
                            local.get 9
                            local.get 0
                            i32.or
                            i32.store
                            local.get 6
                            local.get 3
                            i32.store
                            local.get 3
                            local.get 6
                            i32.store offset=24
                            br 3 (;@9;)
                          end
                          local.get 2
                          i32.const 0
                          i32.const 25
                          local.get 1
                          i32.const 1
                          i32.shr_u
                          i32.sub
                          i32.const 31
                          i32.and
                          local.get 1
                          i32.const 31
                          i32.eq
                          select
                          i32.shl
                          local.set 6
                          loop  ;; label = @12
                            local.get 7
                            local.get 6
                            i32.const 29
                            i32.shr_u
                            i32.const 4
                            i32.and
                            i32.add
                            i32.const 16
                            i32.add
                            local.tee 9
                            i32.load
                            local.tee 1
                            i32.eqz
                            br_if 2 (;@10;)
                            local.get 6
                            i32.const 1
                            i32.shl
                            local.set 6
                            local.get 1
                            local.set 7
                            local.get 1
                            i32.const 4
                            i32.add
                            i32.load
                            i32.const -8
                            i32.and
                            local.get 2
                            i32.ne
                            br_if 0 (;@12;)
                          end
                        end
                        local.get 1
                        i32.load offset=8
                        local.tee 2
                        local.get 3
                        i32.store offset=12
                        local.get 1
                        local.get 3
                        i32.store offset=8
                        local.get 3
                        i32.const 0
                        i32.store offset=24
                        local.get 3
                        local.get 1
                        i32.store offset=12
                        local.get 3
                        local.get 2
                        i32.store offset=8
                        br 4 (;@6;)
                      end
                      local.get 9
                      local.get 3
                      i32.store
                      local.get 3
                      local.get 7
                      i32.store offset=24
                    end
                    local.get 3
                    local.get 3
                    i32.store offset=12
                    local.get 3
                    local.get 3
                    i32.store offset=8
                    br 2 (;@6;)
                  end
                  local.get 0
                  local.get 2
                  i32.const 3
                  i32.shr_u
                  local.tee 2
                  i32.const 3
                  i32.shl
                  i32.add
                  i32.const 8
                  i32.add
                  local.set 1
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load
                      local.tee 6
                      i32.const 1
                      local.get 2
                      i32.shl
                      local.tee 2
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 1
                      i32.load offset=8
                      local.set 2
                      br 1 (;@8;)
                    end
                    local.get 0
                    local.get 6
                    local.get 2
                    i32.or
                    i32.store
                    local.get 1
                    local.set 2
                  end
                  local.get 1
                  local.get 3
                  i32.store offset=8
                  local.get 2
                  local.get 3
                  i32.store offset=12
                  local.get 3
                  local.get 1
                  i32.store offset=12
                  local.get 3
                  local.get 2
                  i32.store offset=8
                  br 1 (;@6;)
                end
                local.get 8
                local.get 2
                local.get 3
                i32.add
                local.tee 1
                i32.const 3
                i32.or
                i32.store offset=4
                local.get 8
                local.get 1
                i32.add
                local.tee 1
                local.get 1
                i32.load offset=4
                i32.const 1
                i32.or
                i32.store offset=4
              end
              local.get 8
              i32.const 8
              i32.add
              return
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.load
                  local.tee 8
                  i32.const 16
                  local.get 1
                  i32.const 11
                  i32.add
                  i32.const -8
                  i32.and
                  local.get 1
                  i32.const 11
                  i32.lt_u
                  select
                  local.tee 3
                  i32.const 3
                  i32.shr_u
                  local.tee 2
                  i32.shr_u
                  local.tee 1
                  i32.const 3
                  i32.and
                  br_if 0 (;@7;)
                  local.get 3
                  local.get 0
                  i32.load offset=400
                  i32.le_u
                  br_if 3 (;@4;)
                  local.get 1
                  br_if 1 (;@6;)
                  local.get 0
                  i32.load offset=4
                  local.tee 1
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 0
                  local.get 1
                  i32.const 0
                  local.get 1
                  i32.sub
                  i32.and
                  i32.ctz
                  i32.const 2
                  i32.shl
                  i32.add
                  i32.const 272
                  i32.add
                  i32.load
                  local.tee 6
                  i32.const 4
                  i32.add
                  i32.load
                  i32.const -8
                  i32.and
                  local.get 3
                  i32.sub
                  local.set 2
                  local.get 6
                  local.set 7
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 6
                      i32.load offset=16
                      local.tee 1
                      br_if 0 (;@9;)
                      local.get 6
                      i32.const 20
                      i32.add
                      i32.load
                      local.tee 1
                      i32.eqz
                      br_if 4 (;@5;)
                    end
                    local.get 1
                    i32.const 4
                    i32.add
                    i32.load
                    i32.const -8
                    i32.and
                    local.get 3
                    i32.sub
                    local.tee 6
                    local.get 2
                    local.get 6
                    local.get 2
                    i32.lt_u
                    local.tee 6
                    select
                    local.set 2
                    local.get 1
                    local.get 7
                    local.get 6
                    select
                    local.set 7
                    local.get 1
                    local.set 6
                    br 0 (;@8;)
                  end
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    local.get 1
                    i32.const -1
                    i32.xor
                    i32.const 1
                    i32.and
                    local.get 2
                    i32.add
                    local.tee 3
                    i32.const 3
                    i32.shl
                    i32.add
                    local.tee 7
                    i32.const 16
                    i32.add
                    i32.load
                    local.tee 1
                    i32.const 8
                    i32.add
                    local.tee 2
                    i32.load
                    local.tee 6
                    local.get 7
                    i32.const 8
                    i32.add
                    local.tee 7
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 6
                    local.get 7
                    i32.store offset=12
                    local.get 7
                    local.get 6
                    i32.store offset=8
                    br 1 (;@7;)
                  end
                  local.get 0
                  local.get 8
                  i32.const -2
                  local.get 3
                  i32.rotl
                  i32.and
                  i32.store
                end
                local.get 1
                local.get 3
                i32.const 3
                i32.shl
                local.tee 3
                i32.const 3
                i32.or
                i32.store offset=4
                local.get 1
                local.get 3
                i32.add
                local.tee 1
                local.get 1
                i32.load offset=4
                i32.const 1
                i32.or
                i32.store offset=4
                br 5 (;@1;)
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  local.get 1
                  local.get 2
                  i32.shl
                  i32.const 2
                  local.get 2
                  i32.shl
                  local.tee 1
                  i32.const 0
                  local.get 1
                  i32.sub
                  i32.or
                  i32.and
                  local.tee 1
                  i32.const 0
                  local.get 1
                  i32.sub
                  i32.and
                  i32.ctz
                  local.tee 2
                  i32.const 3
                  i32.shl
                  i32.add
                  local.tee 7
                  i32.const 16
                  i32.add
                  i32.load
                  local.tee 1
                  i32.const 8
                  i32.add
                  local.tee 9
                  i32.load
                  local.tee 6
                  local.get 7
                  i32.const 8
                  i32.add
                  local.tee 7
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 6
                  local.get 7
                  i32.store offset=12
                  local.get 7
                  local.get 6
                  i32.store offset=8
                  br 1 (;@6;)
                end
                local.get 0
                local.get 8
                i32.const -2
                local.get 2
                i32.rotl
                i32.and
                i32.store
              end
              local.get 1
              local.get 3
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 1
              local.get 3
              i32.add
              local.tee 6
              local.get 2
              i32.const 3
              i32.shl
              local.tee 2
              local.get 3
              i32.sub
              local.tee 3
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 1
              local.get 2
              i32.add
              local.get 3
              i32.store
              block  ;; label = @6
                local.get 0
                i32.load offset=400
                local.tee 1
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                local.get 1
                i32.const 3
                i32.shr_u
                local.tee 7
                i32.const 3
                i32.shl
                i32.add
                i32.const 8
                i32.add
                local.set 2
                local.get 0
                i32.load offset=408
                local.set 1
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.load
                    local.tee 8
                    i32.const 1
                    local.get 7
                    i32.const 31
                    i32.and
                    i32.shl
                    local.tee 7
                    i32.and
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 2
                    i32.load offset=8
                    local.set 7
                    br 1 (;@7;)
                  end
                  local.get 0
                  local.get 8
                  local.get 7
                  i32.or
                  i32.store
                  local.get 2
                  local.set 7
                end
                local.get 2
                local.get 1
                i32.store offset=8
                local.get 7
                local.get 1
                i32.store offset=12
                local.get 1
                local.get 2
                i32.store offset=12
                local.get 1
                local.get 7
                i32.store offset=8
              end
              local.get 0
              local.get 6
              i32.store offset=408
              local.get 0
              local.get 3
              i32.store offset=400
              local.get 9
              return
            end
            local.get 7
            i32.load offset=24
            local.set 5
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 7
                  i32.load offset=12
                  local.tee 6
                  local.get 7
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 7
                  i32.const 20
                  i32.const 16
                  local.get 7
                  i32.const 20
                  i32.add
                  local.tee 6
                  i32.load
                  local.tee 8
                  select
                  i32.add
                  i32.load
                  local.tee 1
                  br_if 1 (;@6;)
                  i32.const 0
                  local.set 6
                  br 2 (;@5;)
                end
                local.get 7
                i32.load offset=8
                local.tee 1
                local.get 6
                i32.store offset=12
                local.get 6
                local.get 1
                i32.store offset=8
                br 1 (;@5;)
              end
              local.get 6
              local.get 7
              i32.const 16
              i32.add
              local.get 8
              select
              local.set 8
              loop  ;; label = @6
                local.get 8
                local.set 9
                block  ;; label = @7
                  local.get 1
                  local.tee 6
                  i32.const 20
                  i32.add
                  local.tee 8
                  i32.load
                  local.tee 1
                  br_if 0 (;@7;)
                  local.get 6
                  i32.const 16
                  i32.add
                  local.set 8
                  local.get 6
                  i32.load offset=16
                  local.set 1
                end
                local.get 1
                br_if 0 (;@6;)
              end
              local.get 9
              i32.const 0
              i32.store
            end
            local.get 5
            i32.eqz
            br_if 2 (;@2;)
            block  ;; label = @5
              local.get 0
              local.get 7
              i32.load offset=28
              i32.const 2
              i32.shl
              i32.add
              i32.const 272
              i32.add
              local.tee 1
              i32.load
              local.get 7
              i32.eq
              br_if 0 (;@5;)
              local.get 5
              i32.const 16
              i32.const 20
              local.get 5
              i32.load offset=16
              local.get 7
              i32.eq
              select
              i32.add
              local.get 6
              i32.store
              local.get 6
              i32.eqz
              br_if 3 (;@2;)
              br 2 (;@3;)
            end
            local.get 1
            local.get 6
            i32.store
            local.get 6
            br_if 1 (;@3;)
            local.get 0
            local.get 0
            i32.load offset=4
            i32.const -2
            local.get 7
            i32.load offset=28
            i32.rotl
            i32.and
            i32.store offset=4
            br 2 (;@2;)
          end
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load offset=400
                      local.tee 1
                      local.get 3
                      i32.ge_u
                      br_if 0 (;@9;)
                      local.get 0
                      i32.load offset=404
                      local.tee 1
                      local.get 3
                      i32.gt_u
                      br_if 3 (;@6;)
                      i32.const 0
                      local.set 2
                      local.get 3
                      i32.const 65583
                      i32.add
                      local.tee 6
                      i32.const 16
                      i32.shr_u
                      memory.grow
                      local.tee 1
                      i32.const -1
                      i32.eq
                      br_if 8 (;@1;)
                      local.get 1
                      i32.const 16
                      i32.shl
                      local.tee 8
                      i32.eqz
                      br_if 8 (;@1;)
                      local.get 0
                      local.get 0
                      i32.load offset=416
                      local.get 6
                      i32.const -65536
                      i32.and
                      local.tee 5
                      i32.add
                      local.tee 1
                      i32.store offset=416
                      local.get 0
                      local.get 0
                      i32.load offset=420
                      local.tee 6
                      local.get 1
                      local.get 6
                      local.get 1
                      i32.gt_u
                      select
                      i32.store offset=420
                      local.get 0
                      i32.load offset=412
                      local.tee 6
                      i32.eqz
                      br_if 1 (;@8;)
                      local.get 0
                      i32.const 424
                      i32.add
                      local.tee 4
                      local.set 1
                      loop  ;; label = @10
                        local.get 1
                        i32.load
                        local.tee 7
                        local.get 1
                        i32.load offset=4
                        local.tee 9
                        i32.add
                        local.get 8
                        i32.eq
                        br_if 3 (;@7;)
                        local.get 1
                        i32.load offset=8
                        local.tee 1
                        br_if 0 (;@10;)
                        br 5 (;@5;)
                      end
                    end
                    local.get 0
                    i32.load offset=408
                    local.set 2
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        local.get 3
                        i32.sub
                        local.tee 6
                        i32.const 15
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 0
                        i32.const 0
                        i32.store offset=408
                        local.get 0
                        i32.const 0
                        i32.store offset=400
                        local.get 2
                        local.get 1
                        i32.const 3
                        i32.or
                        i32.store offset=4
                        local.get 2
                        local.get 1
                        i32.add
                        local.tee 3
                        i32.const 4
                        i32.add
                        local.set 1
                        local.get 3
                        i32.load offset=4
                        i32.const 1
                        i32.or
                        local.set 3
                        br 1 (;@9;)
                      end
                      local.get 0
                      local.get 6
                      i32.store offset=400
                      local.get 0
                      local.get 2
                      local.get 3
                      i32.add
                      local.tee 7
                      i32.store offset=408
                      local.get 7
                      local.get 6
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 2
                      local.get 1
                      i32.add
                      local.get 6
                      i32.store
                      local.get 3
                      i32.const 3
                      i32.or
                      local.set 3
                      local.get 2
                      i32.const 4
                      i32.add
                      local.set 1
                    end
                    local.get 1
                    local.get 3
                    i32.store
                    local.get 2
                    i32.const 8
                    i32.add
                    return
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load offset=444
                      local.tee 1
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 1
                      local.get 8
                      i32.le_u
                      br_if 1 (;@8;)
                    end
                    local.get 0
                    local.get 8
                    i32.store offset=444
                  end
                  local.get 0
                  i32.const 4095
                  i32.store offset=448
                  local.get 0
                  local.get 8
                  i32.store offset=424
                  local.get 0
                  i32.const 436
                  i32.add
                  i32.const 0
                  i32.store
                  local.get 0
                  i32.const 428
                  i32.add
                  local.get 5
                  i32.store
                  local.get 0
                  i32.const 20
                  i32.add
                  local.get 0
                  i32.const 8
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 0
                  i32.const 28
                  i32.add
                  local.get 0
                  i32.const 16
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 36
                  i32.add
                  local.get 0
                  i32.const 24
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 44
                  i32.add
                  local.get 0
                  i32.const 32
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 52
                  i32.add
                  local.get 0
                  i32.const 40
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 60
                  i32.add
                  local.get 0
                  i32.const 48
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 68
                  i32.add
                  local.get 0
                  i32.const 56
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 76
                  i32.add
                  local.get 0
                  i32.const 64
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 84
                  i32.add
                  local.get 0
                  i32.const 72
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 80
                  i32.add
                  local.tee 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 92
                  i32.add
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 88
                  i32.add
                  local.tee 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 100
                  i32.add
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 96
                  i32.add
                  local.tee 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 108
                  i32.add
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 104
                  i32.add
                  local.tee 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 116
                  i32.add
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 112
                  i32.add
                  local.tee 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 124
                  i32.add
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 120
                  i32.add
                  local.tee 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 132
                  i32.add
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 128
                  i32.add
                  local.tee 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 140
                  i32.add
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 136
                  i32.add
                  local.tee 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 148
                  i32.add
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 156
                  i32.add
                  local.get 0
                  i32.const 144
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 164
                  i32.add
                  local.get 0
                  i32.const 152
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 172
                  i32.add
                  local.get 0
                  i32.const 160
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 180
                  i32.add
                  local.get 0
                  i32.const 168
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 188
                  i32.add
                  local.get 0
                  i32.const 176
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 196
                  i32.add
                  local.get 0
                  i32.const 184
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 204
                  i32.add
                  local.get 0
                  i32.const 192
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 212
                  i32.add
                  local.get 0
                  i32.const 200
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 220
                  i32.add
                  local.get 0
                  i32.const 208
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 228
                  i32.add
                  local.get 0
                  i32.const 216
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 236
                  i32.add
                  local.get 0
                  i32.const 224
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 244
                  i32.add
                  local.get 0
                  i32.const 232
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 252
                  i32.add
                  local.get 0
                  i32.const 240
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 260
                  i32.add
                  local.get 0
                  i32.const 248
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 268
                  i32.add
                  local.get 0
                  i32.const 256
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  local.get 8
                  i32.store offset=412
                  local.get 0
                  i32.const 264
                  i32.add
                  local.get 1
                  i32.store
                  local.get 0
                  local.get 5
                  i32.const -40
                  i32.add
                  local.tee 1
                  i32.store offset=404
                  local.get 8
                  local.get 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 8
                  local.get 1
                  i32.add
                  i32.const 40
                  i32.store offset=4
                  local.get 0
                  i32.const 2097152
                  i32.store offset=440
                  br 3 (;@4;)
                end
                local.get 1
                i32.const 12
                i32.add
                i32.load
                br_if 1 (;@5;)
                local.get 8
                local.get 6
                i32.le_u
                br_if 1 (;@5;)
                local.get 7
                local.get 6
                i32.gt_u
                br_if 1 (;@5;)
                local.get 1
                local.get 9
                local.get 5
                i32.add
                i32.store offset=4
                local.get 0
                local.get 0
                i32.load offset=412
                local.tee 1
                i32.const 15
                i32.add
                i32.const -8
                i32.and
                local.tee 6
                i32.const -8
                i32.add
                i32.store offset=412
                local.get 0
                local.get 1
                local.get 6
                i32.sub
                local.get 0
                i32.load offset=404
                local.get 5
                i32.add
                local.tee 7
                i32.add
                i32.const 8
                i32.add
                local.tee 8
                i32.store offset=404
                local.get 6
                i32.const -4
                i32.add
                local.get 8
                i32.const 1
                i32.or
                i32.store
                local.get 1
                local.get 7
                i32.add
                i32.const 40
                i32.store offset=4
                local.get 0
                i32.const 2097152
                i32.store offset=440
                br 2 (;@4;)
              end
              local.get 0
              local.get 1
              local.get 3
              i32.sub
              local.tee 2
              i32.store offset=404
              local.get 0
              local.get 0
              i32.load offset=412
              local.tee 1
              local.get 3
              i32.add
              local.tee 6
              i32.store offset=412
              local.get 6
              local.get 2
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 1
              local.get 3
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 1
              i32.const 8
              i32.add
              return
            end
            local.get 0
            local.get 0
            i32.load offset=444
            local.tee 1
            local.get 8
            local.get 1
            local.get 8
            i32.lt_u
            select
            i32.store offset=444
            local.get 8
            local.get 5
            i32.add
            local.set 7
            local.get 4
            local.set 1
            block  ;; label = @5
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 1
                  i32.load
                  local.get 7
                  i32.eq
                  br_if 1 (;@6;)
                  local.get 1
                  i32.load offset=8
                  local.tee 1
                  br_if 0 (;@7;)
                  br 2 (;@5;)
                end
              end
              local.get 1
              i32.const 12
              i32.add
              i32.load
              br_if 0 (;@5;)
              local.get 1
              local.get 8
              i32.store
              local.get 1
              local.get 1
              i32.load offset=4
              local.get 5
              i32.add
              i32.store offset=4
              local.get 8
              local.get 3
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 8
              local.get 3
              i32.add
              local.set 1
              local.get 7
              local.get 8
              i32.sub
              local.get 3
              i32.sub
              local.set 3
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.load offset=412
                    local.get 7
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 0
                    i32.load offset=408
                    local.get 7
                    i32.eq
                    br_if 1 (;@7;)
                    block  ;; label = @9
                      local.get 7
                      i32.const 4
                      i32.add
                      i32.load
                      local.tee 2
                      i32.const 3
                      i32.and
                      i32.const 1
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 7
                      local.get 2
                      i32.const -8
                      i32.and
                      local.tee 2
                      call $_ZN8dlmalloc8dlmalloc8Dlmalloc12unlink_chunk17h3f3a10e967e64f51E
                      local.get 2
                      local.get 3
                      i32.add
                      local.set 3
                      local.get 7
                      local.get 2
                      i32.add
                      local.set 7
                    end
                    local.get 7
                    local.get 7
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get 1
                    local.get 3
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 1
                    local.get 3
                    i32.add
                    local.get 3
                    i32.store
                    block  ;; label = @9
                      local.get 3
                      i32.const 256
                      i32.lt_u
                      br_if 0 (;@9;)
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 3
                          i32.const 8
                          i32.shr_u
                          local.tee 6
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 2
                          br 1 (;@10;)
                        end
                        i32.const 31
                        local.set 2
                        local.get 3
                        i32.const 16777215
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 3
                        i32.const 6
                        local.get 6
                        i32.clz
                        local.tee 2
                        i32.sub
                        i32.const 31
                        i32.and
                        i32.shr_u
                        i32.const 1
                        i32.and
                        local.get 2
                        i32.const 1
                        i32.shl
                        i32.sub
                        i32.const 62
                        i32.add
                        local.set 2
                      end
                      local.get 1
                      i64.const 0
                      i64.store offset=16 align=4
                      local.get 1
                      local.get 2
                      i32.store offset=28
                      local.get 0
                      local.get 2
                      i32.const 2
                      i32.shl
                      i32.add
                      i32.const 272
                      i32.add
                      local.set 6
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 0
                                i32.const 4
                                i32.add
                                local.tee 7
                                i32.load
                                local.tee 9
                                i32.const 1
                                local.get 2
                                i32.const 31
                                i32.and
                                i32.shl
                                local.tee 0
                                i32.and
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 6
                                i32.load
                                local.tee 7
                                i32.const 4
                                i32.add
                                i32.load
                                i32.const -8
                                i32.and
                                local.get 3
                                i32.ne
                                br_if 1 (;@13;)
                                local.get 7
                                local.set 2
                                br 2 (;@12;)
                              end
                              local.get 7
                              local.get 9
                              local.get 0
                              i32.or
                              i32.store
                              local.get 6
                              local.get 1
                              i32.store
                              local.get 1
                              local.get 6
                              i32.store offset=24
                              br 3 (;@10;)
                            end
                            local.get 3
                            i32.const 0
                            i32.const 25
                            local.get 2
                            i32.const 1
                            i32.shr_u
                            i32.sub
                            i32.const 31
                            i32.and
                            local.get 2
                            i32.const 31
                            i32.eq
                            select
                            i32.shl
                            local.set 6
                            loop  ;; label = @13
                              local.get 7
                              local.get 6
                              i32.const 29
                              i32.shr_u
                              i32.const 4
                              i32.and
                              i32.add
                              i32.const 16
                              i32.add
                              local.tee 9
                              i32.load
                              local.tee 2
                              i32.eqz
                              br_if 2 (;@11;)
                              local.get 6
                              i32.const 1
                              i32.shl
                              local.set 6
                              local.get 2
                              local.set 7
                              local.get 2
                              i32.const 4
                              i32.add
                              i32.load
                              i32.const -8
                              i32.and
                              local.get 3
                              i32.ne
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 2
                          i32.load offset=8
                          local.tee 3
                          local.get 1
                          i32.store offset=12
                          local.get 2
                          local.get 1
                          i32.store offset=8
                          local.get 1
                          i32.const 0
                          i32.store offset=24
                          local.get 1
                          local.get 2
                          i32.store offset=12
                          local.get 1
                          local.get 3
                          i32.store offset=8
                          br 5 (;@6;)
                        end
                        local.get 9
                        local.get 1
                        i32.store
                        local.get 1
                        local.get 7
                        i32.store offset=24
                      end
                      local.get 1
                      local.get 1
                      i32.store offset=12
                      local.get 1
                      local.get 1
                      i32.store offset=8
                      br 3 (;@6;)
                    end
                    local.get 0
                    local.get 3
                    i32.const 3
                    i32.shr_u
                    local.tee 2
                    i32.const 3
                    i32.shl
                    i32.add
                    i32.const 8
                    i32.add
                    local.set 3
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        i32.load
                        local.tee 6
                        i32.const 1
                        local.get 2
                        i32.shl
                        local.tee 2
                        i32.and
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 3
                        i32.load offset=8
                        local.set 2
                        br 1 (;@9;)
                      end
                      local.get 0
                      local.get 6
                      local.get 2
                      i32.or
                      i32.store
                      local.get 3
                      local.set 2
                    end
                    local.get 3
                    local.get 1
                    i32.store offset=8
                    local.get 2
                    local.get 1
                    i32.store offset=12
                    local.get 1
                    local.get 3
                    i32.store offset=12
                    local.get 1
                    local.get 2
                    i32.store offset=8
                    br 2 (;@6;)
                  end
                  local.get 0
                  local.get 1
                  i32.store offset=412
                  local.get 0
                  local.get 0
                  i32.load offset=404
                  local.get 3
                  i32.add
                  local.tee 3
                  i32.store offset=404
                  local.get 1
                  local.get 3
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  br 1 (;@6;)
                end
                local.get 0
                local.get 1
                i32.store offset=408
                local.get 0
                local.get 0
                i32.load offset=400
                local.get 3
                i32.add
                local.tee 3
                i32.store offset=400
                local.get 1
                local.get 3
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 1
                local.get 3
                i32.add
                local.get 3
                i32.store
              end
              local.get 8
              i32.const 8
              i32.add
              return
            end
            local.get 4
            local.set 1
            block  ;; label = @5
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.load
                  local.tee 7
                  local.get 6
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 7
                  local.get 1
                  i32.load offset=4
                  i32.add
                  local.tee 7
                  local.get 6
                  i32.gt_u
                  br_if 2 (;@5;)
                end
                local.get 1
                i32.load offset=8
                local.set 1
                br 0 (;@6;)
              end
            end
            local.get 0
            local.get 8
            i32.store offset=412
            local.get 0
            local.get 5
            i32.const -40
            i32.add
            local.tee 1
            i32.store offset=404
            local.get 8
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 8
            local.get 1
            i32.add
            i32.const 40
            i32.store offset=4
            local.get 0
            i32.const 2097152
            i32.store offset=440
            local.get 6
            local.get 7
            i32.const -32
            i32.add
            i32.const -8
            i32.and
            i32.const -8
            i32.add
            local.tee 1
            local.get 1
            local.get 6
            i32.const 16
            i32.add
            i32.lt_u
            select
            local.tee 9
            i32.const 27
            i32.store offset=4
            local.get 4
            i64.load align=4
            local.set 10
            local.get 9
            i32.const 16
            i32.add
            local.get 4
            i32.const 8
            i32.add
            i64.load align=4
            i64.store align=4
            local.get 9
            local.get 10
            i64.store offset=8 align=4
            local.get 0
            i32.const 436
            i32.add
            i32.const 0
            i32.store
            local.get 0
            i32.const 428
            i32.add
            local.get 5
            i32.store
            local.get 0
            local.get 8
            i32.store offset=424
            local.get 0
            i32.const 432
            i32.add
            local.get 9
            i32.const 8
            i32.add
            i32.store
            local.get 9
            i32.const 28
            i32.add
            local.set 1
            loop  ;; label = @5
              local.get 1
              i32.const 7
              i32.store
              local.get 7
              local.get 1
              i32.const 4
              i32.add
              local.tee 1
              i32.gt_u
              br_if 0 (;@5;)
            end
            local.get 9
            local.get 6
            i32.eq
            br_if 0 (;@4;)
            local.get 9
            local.get 9
            i32.load offset=4
            i32.const -2
            i32.and
            i32.store offset=4
            local.get 6
            local.get 9
            local.get 6
            i32.sub
            local.tee 8
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 9
            local.get 8
            i32.store
            block  ;; label = @5
              local.get 8
              i32.const 256
              i32.lt_u
              br_if 0 (;@5;)
              block  ;; label = @6
                block  ;; label = @7
                  local.get 8
                  i32.const 8
                  i32.shr_u
                  local.tee 7
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 1
                  br 1 (;@6;)
                end
                i32.const 31
                local.set 1
                local.get 8
                i32.const 16777215
                i32.gt_u
                br_if 0 (;@6;)
                local.get 8
                i32.const 6
                local.get 7
                i32.clz
                local.tee 1
                i32.sub
                i32.const 31
                i32.and
                i32.shr_u
                i32.const 1
                i32.and
                local.get 1
                i32.const 1
                i32.shl
                i32.sub
                i32.const 62
                i32.add
                local.set 1
              end
              local.get 6
              i64.const 0
              i64.store offset=16 align=4
              local.get 6
              i32.const 28
              i32.add
              local.get 1
              i32.store
              local.get 0
              local.get 1
              i32.const 2
              i32.shl
              i32.add
              i32.const 272
              i32.add
              local.set 7
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        i32.const 4
                        i32.add
                        local.tee 9
                        i32.load
                        local.tee 5
                        i32.const 1
                        local.get 1
                        i32.const 31
                        i32.and
                        i32.shl
                        local.tee 4
                        i32.and
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 7
                        i32.load
                        local.tee 9
                        i32.const 4
                        i32.add
                        i32.load
                        i32.const -8
                        i32.and
                        local.get 8
                        i32.ne
                        br_if 1 (;@9;)
                        local.get 9
                        local.set 1
                        br 2 (;@8;)
                      end
                      local.get 9
                      local.get 5
                      local.get 4
                      i32.or
                      i32.store
                      local.get 7
                      local.get 6
                      i32.store
                      local.get 6
                      i32.const 24
                      i32.add
                      local.get 7
                      i32.store
                      br 3 (;@6;)
                    end
                    local.get 8
                    i32.const 0
                    i32.const 25
                    local.get 1
                    i32.const 1
                    i32.shr_u
                    i32.sub
                    i32.const 31
                    i32.and
                    local.get 1
                    i32.const 31
                    i32.eq
                    select
                    i32.shl
                    local.set 7
                    loop  ;; label = @9
                      local.get 9
                      local.get 7
                      i32.const 29
                      i32.shr_u
                      i32.const 4
                      i32.and
                      i32.add
                      i32.const 16
                      i32.add
                      local.tee 5
                      i32.load
                      local.tee 1
                      i32.eqz
                      br_if 2 (;@7;)
                      local.get 7
                      i32.const 1
                      i32.shl
                      local.set 7
                      local.get 1
                      local.set 9
                      local.get 1
                      i32.const 4
                      i32.add
                      i32.load
                      i32.const -8
                      i32.and
                      local.get 8
                      i32.ne
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 1
                  i32.load offset=8
                  local.tee 7
                  local.get 6
                  i32.store offset=12
                  local.get 1
                  local.get 6
                  i32.store offset=8
                  local.get 6
                  i32.const 24
                  i32.add
                  i32.const 0
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store offset=12
                  local.get 6
                  local.get 7
                  i32.store offset=8
                  br 3 (;@4;)
                end
                local.get 5
                local.get 6
                i32.store
                local.get 6
                i32.const 24
                i32.add
                local.get 9
                i32.store
              end
              local.get 6
              local.get 6
              i32.store offset=12
              local.get 6
              local.get 6
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 0
            local.get 8
            i32.const 3
            i32.shr_u
            local.tee 7
            i32.const 3
            i32.shl
            i32.add
            i32.const 8
            i32.add
            local.set 1
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load
                local.tee 8
                i32.const 1
                local.get 7
                i32.shl
                local.tee 7
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 1
                i32.load offset=8
                local.set 7
                br 1 (;@5;)
              end
              local.get 0
              local.get 8
              local.get 7
              i32.or
              i32.store
              local.get 1
              local.set 7
            end
            local.get 1
            local.get 6
            i32.store offset=8
            local.get 7
            local.get 6
            i32.store offset=12
            local.get 6
            local.get 1
            i32.store offset=12
            local.get 6
            local.get 7
            i32.store offset=8
          end
          local.get 0
          i32.load offset=404
          local.tee 1
          local.get 3
          i32.le_u
          br_if 2 (;@1;)
          local.get 0
          local.get 1
          local.get 3
          i32.sub
          local.tee 2
          i32.store offset=404
          local.get 0
          local.get 0
          i32.load offset=412
          local.tee 1
          local.get 3
          i32.add
          local.tee 6
          i32.store offset=412
          local.get 6
          local.get 2
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 1
          local.get 3
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 1
          i32.const 8
          i32.add
          return
        end
        local.get 6
        local.get 5
        i32.store offset=24
        block  ;; label = @3
          local.get 7
          i32.load offset=16
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          local.get 1
          i32.store offset=16
          local.get 1
          local.get 6
          i32.store offset=24
        end
        local.get 7
        i32.const 20
        i32.add
        i32.load
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 6
        i32.const 20
        i32.add
        local.get 1
        i32.store
        local.get 1
        local.get 6
        i32.store offset=24
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 16
          i32.lt_u
          br_if 0 (;@3;)
          local.get 7
          local.get 3
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 7
          local.get 3
          i32.add
          local.tee 3
          local.get 2
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 3
          local.get 2
          i32.add
          local.get 2
          i32.store
          block  ;; label = @4
            local.get 0
            i32.load offset=400
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 1
            i32.const 3
            i32.shr_u
            local.tee 8
            i32.const 3
            i32.shl
            i32.add
            i32.const 8
            i32.add
            local.set 6
            local.get 0
            i32.load offset=408
            local.set 1
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load
                local.tee 9
                i32.const 1
                local.get 8
                i32.const 31
                i32.and
                i32.shl
                local.tee 8
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                i32.load offset=8
                local.set 8
                br 1 (;@5;)
              end
              local.get 0
              local.get 9
              local.get 8
              i32.or
              i32.store
              local.get 6
              local.set 8
            end
            local.get 6
            local.get 1
            i32.store offset=8
            local.get 8
            local.get 1
            i32.store offset=12
            local.get 1
            local.get 6
            i32.store offset=12
            local.get 1
            local.get 8
            i32.store offset=8
          end
          local.get 0
          local.get 3
          i32.store offset=408
          local.get 0
          local.get 2
          i32.store offset=400
          br 1 (;@2;)
        end
        local.get 7
        local.get 2
        local.get 3
        i32.add
        local.tee 1
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 7
        local.get 1
        i32.add
        local.tee 1
        local.get 1
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
      end
      local.get 7
      i32.const 8
      i32.add
      return
    end
    local.get 2)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc12unlink_chunk17h3f3a10e967e64f51E (type 3) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 256
          i32.lt_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 24
          i32.add
          i32.load
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.load offset=12
                local.tee 4
                local.get 1
                i32.ne
                br_if 0 (;@6;)
                local.get 1
                i32.const 20
                i32.const 16
                local.get 1
                i32.const 20
                i32.add
                local.tee 4
                i32.load
                local.tee 5
                select
                i32.add
                i32.load
                local.tee 2
                br_if 1 (;@5;)
                i32.const 0
                local.set 4
                br 2 (;@4;)
              end
              local.get 1
              i32.load offset=8
              local.tee 2
              local.get 4
              i32.store offset=12
              local.get 4
              local.get 2
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 4
            local.get 1
            i32.const 16
            i32.add
            local.get 5
            select
            local.set 5
            loop  ;; label = @5
              local.get 5
              local.set 6
              block  ;; label = @6
                local.get 2
                local.tee 4
                i32.const 20
                i32.add
                local.tee 5
                i32.load
                local.tee 2
                br_if 0 (;@6;)
                local.get 4
                i32.const 16
                i32.add
                local.set 5
                local.get 4
                i32.load offset=16
                local.set 2
              end
              local.get 2
              br_if 0 (;@5;)
            end
            local.get 6
            i32.const 0
            i32.store
          end
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          block  ;; label = @4
            local.get 0
            local.get 1
            i32.const 28
            i32.add
            i32.load
            i32.const 2
            i32.shl
            i32.add
            i32.const 272
            i32.add
            local.tee 2
            i32.load
            local.get 1
            i32.eq
            br_if 0 (;@4;)
            local.get 3
            i32.const 16
            i32.const 20
            local.get 3
            i32.load offset=16
            local.get 1
            i32.eq
            select
            i32.add
            local.get 4
            i32.store
            local.get 4
            i32.eqz
            br_if 3 (;@1;)
            br 2 (;@2;)
          end
          local.get 2
          local.get 4
          i32.store
          local.get 4
          br_if 1 (;@2;)
          local.get 0
          local.get 0
          i32.load offset=4
          i32.const -2
          local.get 1
          i32.load offset=28
          i32.rotl
          i32.and
          i32.store offset=4
          return
        end
        block  ;; label = @3
          local.get 1
          i32.const 12
          i32.add
          i32.load
          local.tee 4
          local.get 1
          i32.const 8
          i32.add
          i32.load
          local.tee 5
          i32.eq
          br_if 0 (;@3;)
          local.get 5
          local.get 4
          i32.store offset=12
          local.get 4
          local.get 5
          i32.store offset=8
          return
        end
        local.get 0
        local.get 0
        i32.load
        i32.const -2
        local.get 2
        i32.const 3
        i32.shr_u
        i32.rotl
        i32.and
        i32.store
        br 1 (;@1;)
      end
      local.get 4
      local.get 3
      i32.store offset=24
      block  ;; label = @2
        local.get 1
        i32.load offset=16
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 2
        i32.store offset=16
        local.get 2
        local.get 4
        i32.store offset=24
      end
      local.get 1
      i32.const 20
      i32.add
      i32.load
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.const 20
      i32.add
      local.get 2
      i32.store
      local.get 2
      local.get 4
      i32.store offset=24
      return
    end)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc7realloc17h1d2bcca6ad3ca8d2E (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    i32.const 0
    local.set 3
    block  ;; label = @1
      local.get 2
      i32.const -65588
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 16
      local.get 2
      i32.const 11
      i32.add
      i32.const -8
      i32.and
      local.get 2
      i32.const 11
      i32.lt_u
      select
      local.set 4
      local.get 1
      i32.const -4
      i32.add
      local.tee 5
      i32.load
      local.tee 6
      i32.const -8
      i32.and
      local.set 7
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 6
                    i32.const 3
                    i32.and
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 1
                    i32.const -8
                    i32.add
                    local.tee 8
                    local.get 7
                    i32.add
                    local.set 9
                    local.get 7
                    local.get 4
                    i32.ge_u
                    br_if 1 (;@7;)
                    local.get 0
                    i32.load offset=412
                    local.get 9
                    i32.eq
                    br_if 2 (;@6;)
                    local.get 0
                    i32.load offset=408
                    local.get 9
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 9
                    i32.const 4
                    i32.add
                    i32.load
                    local.tee 6
                    i32.const 2
                    i32.and
                    br_if 6 (;@2;)
                    local.get 6
                    i32.const -8
                    i32.and
                    local.tee 6
                    local.get 7
                    i32.add
                    local.tee 7
                    local.get 4
                    i32.ge_u
                    br_if 4 (;@4;)
                    br 6 (;@2;)
                  end
                  local.get 4
                  i32.const 256
                  i32.lt_u
                  br_if 5 (;@2;)
                  local.get 7
                  local.get 4
                  i32.const 4
                  i32.or
                  i32.lt_u
                  br_if 5 (;@2;)
                  local.get 7
                  local.get 4
                  i32.sub
                  i32.const 131073
                  i32.ge_u
                  br_if 5 (;@2;)
                  br 4 (;@3;)
                end
                local.get 7
                local.get 4
                i32.sub
                local.tee 2
                i32.const 16
                i32.lt_u
                br_if 3 (;@3;)
                local.get 5
                local.get 4
                local.get 6
                i32.const 1
                i32.and
                i32.or
                i32.const 2
                i32.or
                i32.store
                local.get 8
                local.get 4
                i32.add
                local.tee 3
                local.get 2
                i32.const 3
                i32.or
                i32.store offset=4
                local.get 9
                local.get 9
                i32.load offset=4
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 0
                local.get 3
                local.get 2
                call $_ZN8dlmalloc8dlmalloc8Dlmalloc13dispose_chunk17h749c777d9514dd45E
                br 3 (;@3;)
              end
              local.get 0
              i32.load offset=404
              local.get 7
              i32.add
              local.tee 7
              local.get 4
              i32.le_u
              br_if 3 (;@2;)
              local.get 5
              local.get 4
              local.get 6
              i32.const 1
              i32.and
              i32.or
              i32.const 2
              i32.or
              i32.store
              local.get 8
              local.get 4
              i32.add
              local.tee 2
              local.get 7
              local.get 4
              i32.sub
              local.tee 3
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 3
              i32.store offset=404
              local.get 0
              local.get 2
              i32.store offset=412
              br 2 (;@3;)
            end
            local.get 0
            i32.load offset=400
            local.get 7
            i32.add
            local.tee 7
            local.get 4
            i32.lt_u
            br_if 2 (;@2;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 7
                local.get 4
                i32.sub
                local.tee 2
                i32.const 15
                i32.gt_u
                br_if 0 (;@6;)
                local.get 5
                local.get 6
                i32.const 1
                i32.and
                local.get 7
                i32.or
                i32.const 2
                i32.or
                i32.store
                local.get 8
                local.get 7
                i32.add
                local.tee 2
                local.get 2
                i32.load offset=4
                i32.const 1
                i32.or
                i32.store offset=4
                i32.const 0
                local.set 2
                i32.const 0
                local.set 3
                br 1 (;@5;)
              end
              local.get 5
              local.get 4
              local.get 6
              i32.const 1
              i32.and
              i32.or
              i32.const 2
              i32.or
              i32.store
              local.get 8
              local.get 4
              i32.add
              local.tee 3
              local.get 2
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 8
              local.get 7
              i32.add
              local.tee 4
              local.get 2
              i32.store
              local.get 4
              local.get 4
              i32.load offset=4
              i32.const -2
              i32.and
              i32.store offset=4
            end
            local.get 0
            local.get 3
            i32.store offset=408
            local.get 0
            local.get 2
            i32.store offset=400
            br 1 (;@3;)
          end
          local.get 0
          local.get 9
          local.get 6
          call $_ZN8dlmalloc8dlmalloc8Dlmalloc12unlink_chunk17h3f3a10e967e64f51E
          block  ;; label = @4
            local.get 7
            local.get 4
            i32.sub
            local.tee 2
            i32.const 16
            i32.lt_u
            br_if 0 (;@4;)
            local.get 5
            local.get 4
            local.get 5
            i32.load
            i32.const 1
            i32.and
            i32.or
            i32.const 2
            i32.or
            i32.store
            local.get 8
            local.get 4
            i32.add
            local.tee 3
            local.get 2
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 8
            local.get 7
            i32.add
            local.tee 4
            local.get 4
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            local.get 2
            call $_ZN8dlmalloc8dlmalloc8Dlmalloc13dispose_chunk17h749c777d9514dd45E
            br 1 (;@3;)
          end
          local.get 5
          local.get 7
          local.get 5
          i32.load
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 8
          local.get 7
          i32.add
          local.tee 2
          local.get 2
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
        end
        local.get 1
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      local.get 2
      call $_ZN8dlmalloc8dlmalloc8Dlmalloc6malloc17h819baa7bf6511e91E
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      local.get 1
      local.get 2
      i32.const -4
      i32.const -8
      local.get 5
      i32.load
      local.tee 3
      i32.const 3
      i32.and
      select
      local.get 3
      i32.const -8
      i32.and
      i32.add
      local.tee 3
      local.get 3
      local.get 2
      i32.gt_u
      select
      call $memcpy
      local.set 2
      local.get 0
      local.get 1
      call $_ZN8dlmalloc8dlmalloc8Dlmalloc4free17h8125361f3b57096aE
      local.get 2
      return
    end
    local.get 3)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc13dispose_chunk17h749c777d9514dd45E (type 3) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    local.get 1
    local.get 2
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 4
              i32.add
              i32.load
              local.tee 4
              i32.const 1
              i32.and
              br_if 0 (;@5;)
              local.get 4
              i32.const 3
              i32.and
              i32.eqz
              br_if 1 (;@4;)
              local.get 1
              i32.load
              local.tee 4
              local.get 2
              i32.add
              local.set 2
              block  ;; label = @6
                local.get 0
                i32.load offset=408
                local.get 1
                local.get 4
                i32.sub
                local.tee 1
                i32.ne
                br_if 0 (;@6;)
                local.get 3
                i32.load offset=4
                i32.const 3
                i32.and
                i32.const 3
                i32.ne
                br_if 1 (;@5;)
                local.get 0
                local.get 2
                i32.store offset=400
                local.get 3
                local.get 3
                i32.load offset=4
                i32.const -2
                i32.and
                i32.store offset=4
                local.get 1
                local.get 2
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 3
                local.get 2
                i32.store
                return
              end
              local.get 0
              local.get 1
              local.get 4
              call $_ZN8dlmalloc8dlmalloc8Dlmalloc12unlink_chunk17h3f3a10e967e64f51E
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.const 4
                i32.add
                i32.load
                local.tee 4
                i32.const 2
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                i32.const 4
                i32.add
                local.get 4
                i32.const -2
                i32.and
                i32.store
                local.get 1
                local.get 2
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 1
                local.get 2
                i32.add
                local.get 2
                i32.store
                br 1 (;@5;)
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.load offset=412
                  local.get 3
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 0
                  i32.load offset=408
                  local.get 3
                  i32.eq
                  br_if 1 (;@6;)
                  local.get 0
                  local.get 3
                  local.get 4
                  i32.const -8
                  i32.and
                  local.tee 4
                  call $_ZN8dlmalloc8dlmalloc8Dlmalloc12unlink_chunk17h3f3a10e967e64f51E
                  local.get 1
                  local.get 4
                  local.get 2
                  i32.add
                  local.tee 2
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 1
                  local.get 2
                  i32.add
                  local.get 2
                  i32.store
                  local.get 1
                  local.get 0
                  i32.load offset=408
                  i32.ne
                  br_if 2 (;@5;)
                  local.get 0
                  local.get 2
                  i32.store offset=400
                  return
                end
                local.get 0
                local.get 1
                i32.store offset=412
                local.get 0
                local.get 0
                i32.load offset=404
                local.get 2
                i32.add
                local.tee 2
                i32.store offset=404
                local.get 1
                local.get 2
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 1
                local.get 0
                i32.load offset=408
                i32.ne
                br_if 2 (;@4;)
                local.get 0
                i32.const 0
                i32.store offset=400
                local.get 0
                i32.const 0
                i32.store offset=408
                return
              end
              local.get 0
              local.get 1
              i32.store offset=408
              local.get 0
              local.get 0
              i32.load offset=400
              local.get 2
              i32.add
              local.tee 2
              i32.store offset=400
              local.get 1
              local.get 2
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 1
              local.get 2
              i32.add
              local.get 2
              i32.store
              return
            end
            local.get 2
            i32.const 256
            i32.lt_u
            br_if 3 (;@1;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.const 8
                i32.shr_u
                local.tee 4
                br_if 0 (;@6;)
                i32.const 0
                local.set 3
                br 1 (;@5;)
              end
              i32.const 31
              local.set 3
              local.get 2
              i32.const 16777215
              i32.gt_u
              br_if 0 (;@5;)
              local.get 2
              i32.const 6
              local.get 4
              i32.clz
              local.tee 3
              i32.sub
              i32.const 31
              i32.and
              i32.shr_u
              i32.const 1
              i32.and
              local.get 3
              i32.const 1
              i32.shl
              i32.sub
              i32.const 62
              i32.add
              local.set 3
            end
            local.get 1
            i64.const 0
            i64.store offset=16 align=4
            local.get 1
            i32.const 28
            i32.add
            local.get 3
            i32.store
            local.get 0
            local.get 3
            i32.const 2
            i32.shl
            i32.add
            i32.const 272
            i32.add
            local.set 4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.const 4
                  i32.add
                  local.tee 0
                  i32.load
                  local.tee 5
                  i32.const 1
                  local.get 3
                  i32.const 31
                  i32.and
                  i32.shl
                  local.tee 6
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 4
                  i32.load
                  local.tee 4
                  i32.const 4
                  i32.add
                  i32.load
                  i32.const -8
                  i32.and
                  local.get 2
                  i32.ne
                  br_if 1 (;@6;)
                  local.get 4
                  local.set 0
                  br 2 (;@5;)
                end
                local.get 0
                local.get 5
                local.get 6
                i32.or
                i32.store
                local.get 4
                local.get 1
                i32.store
                local.get 1
                i32.const 24
                i32.add
                local.get 4
                i32.store
                br 4 (;@2;)
              end
              local.get 2
              i32.const 0
              i32.const 25
              local.get 3
              i32.const 1
              i32.shr_u
              i32.sub
              i32.const 31
              i32.and
              local.get 3
              i32.const 31
              i32.eq
              select
              i32.shl
              local.set 3
              loop  ;; label = @6
                local.get 4
                local.get 3
                i32.const 29
                i32.shr_u
                i32.const 4
                i32.and
                i32.add
                i32.const 16
                i32.add
                local.tee 5
                i32.load
                local.tee 0
                i32.eqz
                br_if 3 (;@3;)
                local.get 3
                i32.const 1
                i32.shl
                local.set 3
                local.get 0
                local.set 4
                local.get 0
                i32.const 4
                i32.add
                i32.load
                i32.const -8
                i32.and
                local.get 2
                i32.ne
                br_if 0 (;@6;)
              end
            end
            local.get 0
            i32.load offset=8
            local.tee 2
            local.get 1
            i32.store offset=12
            local.get 0
            local.get 1
            i32.store offset=8
            local.get 1
            i32.const 24
            i32.add
            i32.const 0
            i32.store
            local.get 1
            local.get 0
            i32.store offset=12
            local.get 1
            local.get 2
            i32.store offset=8
          end
          return
        end
        local.get 5
        local.get 1
        i32.store
        local.get 1
        i32.const 24
        i32.add
        local.get 4
        i32.store
      end
      local.get 1
      local.get 1
      i32.store offset=12
      local.get 1
      local.get 1
      i32.store offset=8
      return
    end
    local.get 0
    local.get 2
    i32.const 3
    i32.shr_u
    local.tee 3
    i32.const 3
    i32.shl
    i32.add
    i32.const 8
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 4
        i32.const 1
        local.get 3
        i32.shl
        local.tee 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load offset=8
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      local.get 4
      local.get 3
      i32.or
      i32.store
      local.get 2
      local.set 0
    end
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 1
    local.get 2
    i32.store offset=12
    local.get 1
    local.get 0
    i32.store offset=8)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc4free17h8125361f3b57096aE (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.const -8
    i32.add
    local.tee 2
    local.get 1
    i32.const -4
    i32.add
    i32.load
    local.tee 3
    i32.const -8
    i32.and
    local.tee 1
    i32.add
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 3
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 2
            i32.load
            local.tee 3
            local.get 1
            i32.add
            local.set 1
            block  ;; label = @5
              local.get 0
              i32.load offset=408
              local.get 2
              local.get 3
              i32.sub
              local.tee 2
              i32.ne
              br_if 0 (;@5;)
              local.get 4
              i32.load offset=4
              i32.const 3
              i32.and
              i32.const 3
              i32.ne
              br_if 1 (;@4;)
              local.get 0
              local.get 1
              i32.store offset=400
              local.get 4
              local.get 4
              i32.load offset=4
              i32.const -2
              i32.and
              i32.store offset=4
              local.get 2
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 2
              local.get 1
              i32.add
              local.get 1
              i32.store
              return
            end
            local.get 0
            local.get 2
            local.get 3
            call $_ZN8dlmalloc8dlmalloc8Dlmalloc12unlink_chunk17h3f3a10e967e64f51E
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.const 4
              i32.add
              local.tee 5
              i32.load
              local.tee 3
              i32.const 2
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              local.get 3
              i32.const -2
              i32.and
              i32.store
              local.get 2
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 2
              local.get 1
              i32.add
              local.get 1
              i32.store
              br 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=412
                local.get 4
                i32.eq
                br_if 0 (;@6;)
                local.get 0
                i32.load offset=408
                local.get 4
                i32.eq
                br_if 1 (;@5;)
                local.get 0
                local.get 4
                local.get 3
                i32.const -8
                i32.and
                local.tee 3
                call $_ZN8dlmalloc8dlmalloc8Dlmalloc12unlink_chunk17h3f3a10e967e64f51E
                local.get 2
                local.get 3
                local.get 1
                i32.add
                local.tee 1
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 2
                local.get 1
                i32.add
                local.get 1
                i32.store
                local.get 2
                local.get 0
                i32.load offset=408
                i32.ne
                br_if 2 (;@4;)
                local.get 0
                local.get 1
                i32.store offset=400
                return
              end
              local.get 0
              local.get 2
              i32.store offset=412
              local.get 0
              local.get 0
              i32.load offset=404
              local.get 1
              i32.add
              local.tee 1
              i32.store offset=404
              local.get 2
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              block  ;; label = @6
                local.get 2
                local.get 0
                i32.load offset=408
                i32.ne
                br_if 0 (;@6;)
                local.get 0
                i32.const 0
                i32.store offset=400
                local.get 0
                i32.const 0
                i32.store offset=408
              end
              local.get 0
              i32.const 440
              i32.add
              i32.load
              local.tee 3
              local.get 1
              i32.ge_u
              br_if 2 (;@3;)
              local.get 0
              i32.load offset=412
              local.tee 1
              i32.eqz
              br_if 2 (;@3;)
              block  ;; label = @6
                local.get 0
                i32.load offset=404
                local.tee 5
                i32.const 41
                i32.lt_u
                br_if 0 (;@6;)
                local.get 0
                i32.const 424
                i32.add
                local.set 2
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.load
                    local.tee 4
                    local.get 1
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 4
                    local.get 2
                    i32.load offset=4
                    i32.add
                    local.get 1
                    i32.gt_u
                    br_if 2 (;@6;)
                  end
                  local.get 2
                  i32.load offset=8
                  local.tee 2
                  br_if 0 (;@7;)
                end
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.const 432
                  i32.add
                  i32.load
                  local.tee 1
                  br_if 0 (;@7;)
                  i32.const 4095
                  local.set 2
                  br 1 (;@6;)
                end
                i32.const 0
                local.set 2
                loop  ;; label = @7
                  local.get 2
                  i32.const 1
                  i32.add
                  local.set 2
                  local.get 1
                  i32.load offset=8
                  local.tee 1
                  br_if 0 (;@7;)
                end
                local.get 2
                i32.const 4095
                local.get 2
                i32.const 4095
                i32.gt_u
                select
                local.set 2
              end
              local.get 0
              local.get 2
              i32.store offset=448
              local.get 5
              local.get 3
              i32.le_u
              br_if 2 (;@3;)
              local.get 0
              i32.const 440
              i32.add
              i32.const -1
              i32.store
              return
            end
            local.get 0
            local.get 2
            i32.store offset=408
            local.get 0
            local.get 0
            i32.load offset=400
            local.get 1
            i32.add
            local.tee 1
            i32.store offset=400
            local.get 2
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 2
            local.get 1
            i32.add
            local.get 1
            i32.store
            return
          end
          local.get 1
          i32.const 256
          i32.lt_u
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 8
              i32.shr_u
              local.tee 3
              br_if 0 (;@5;)
              i32.const 0
              local.set 4
              br 1 (;@4;)
            end
            i32.const 31
            local.set 4
            local.get 1
            i32.const 16777215
            i32.gt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const 6
            local.get 3
            i32.clz
            local.tee 4
            i32.sub
            i32.const 31
            i32.and
            i32.shr_u
            i32.const 1
            i32.and
            local.get 4
            i32.const 1
            i32.shl
            i32.sub
            i32.const 62
            i32.add
            local.set 4
          end
          local.get 2
          i64.const 0
          i64.store offset=16 align=4
          local.get 2
          i32.const 28
          i32.add
          local.get 4
          i32.store
          local.get 0
          local.get 4
          i32.const 2
          i32.shl
          i32.add
          i32.const 272
          i32.add
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.const 4
                      i32.add
                      local.tee 5
                      i32.load
                      local.tee 6
                      i32.const 1
                      local.get 4
                      i32.const 31
                      i32.and
                      i32.shl
                      local.tee 7
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 3
                      i32.load
                      local.tee 5
                      i32.const 4
                      i32.add
                      i32.load
                      i32.const -8
                      i32.and
                      local.get 1
                      i32.ne
                      br_if 1 (;@8;)
                      local.get 5
                      local.set 4
                      br 2 (;@7;)
                    end
                    local.get 5
                    local.get 6
                    local.get 7
                    i32.or
                    i32.store
                    local.get 3
                    local.get 2
                    i32.store
                    local.get 2
                    i32.const 24
                    i32.add
                    local.get 3
                    i32.store
                    br 3 (;@5;)
                  end
                  local.get 1
                  i32.const 0
                  i32.const 25
                  local.get 4
                  i32.const 1
                  i32.shr_u
                  i32.sub
                  i32.const 31
                  i32.and
                  local.get 4
                  i32.const 31
                  i32.eq
                  select
                  i32.shl
                  local.set 3
                  loop  ;; label = @8
                    local.get 5
                    local.get 3
                    i32.const 29
                    i32.shr_u
                    i32.const 4
                    i32.and
                    i32.add
                    i32.const 16
                    i32.add
                    local.tee 6
                    i32.load
                    local.tee 4
                    i32.eqz
                    br_if 2 (;@6;)
                    local.get 3
                    i32.const 1
                    i32.shl
                    local.set 3
                    local.get 4
                    local.set 5
                    local.get 4
                    i32.const 4
                    i32.add
                    i32.load
                    i32.const -8
                    i32.and
                    local.get 1
                    i32.ne
                    br_if 0 (;@8;)
                  end
                end
                local.get 4
                i32.load offset=8
                local.tee 1
                local.get 2
                i32.store offset=12
                local.get 4
                local.get 2
                i32.store offset=8
                local.get 2
                i32.const 24
                i32.add
                i32.const 0
                i32.store
                local.get 2
                local.get 4
                i32.store offset=12
                local.get 2
                local.get 1
                i32.store offset=8
                br 2 (;@4;)
              end
              local.get 6
              local.get 2
              i32.store
              local.get 2
              i32.const 24
              i32.add
              local.get 5
              i32.store
            end
            local.get 2
            local.get 2
            i32.store offset=12
            local.get 2
            local.get 2
            i32.store offset=8
          end
          local.get 0
          local.get 0
          i32.load offset=448
          i32.const -1
          i32.add
          local.tee 2
          i32.store offset=448
          local.get 2
          i32.eqz
          br_if 2 (;@1;)
        end
        return
      end
      local.get 0
      local.get 1
      i32.const 3
      i32.shr_u
      local.tee 4
      i32.const 3
      i32.shl
      i32.add
      i32.const 8
      i32.add
      local.set 1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load
          local.tee 3
          i32.const 1
          local.get 4
          i32.shl
          local.tee 4
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.load offset=8
          local.set 0
          br 1 (;@2;)
        end
        local.get 0
        local.get 3
        local.get 4
        i32.or
        i32.store
        local.get 1
        local.set 0
      end
      local.get 1
      local.get 2
      i32.store offset=8
      local.get 0
      local.get 2
      i32.store offset=12
      local.get 2
      local.get 1
      i32.store offset=12
      local.get 2
      local.get 0
      i32.store offset=8
      return
    end
    block  ;; label = @1
      local.get 0
      i32.const 432
      i32.add
      i32.load
      local.tee 1
      br_if 0 (;@1;)
      local.get 0
      i32.const 4095
      i32.store offset=448
      return
    end
    i32.const 0
    local.set 2
    loop  ;; label = @1
      local.get 2
      i32.const 1
      i32.add
      local.set 2
      local.get 1
      i32.load offset=8
      local.tee 1
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 2
    i32.const 4095
    local.get 2
    i32.const 4095
    i32.gt_u
    select
    i32.store offset=448)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc8memalign17h1569028eb68743b4E (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    i32.const 0
    local.set 3
    block  ;; label = @1
      i32.const -65587
      local.get 1
      i32.const 16
      local.get 1
      i32.const 16
      i32.gt_u
      select
      local.tee 1
      i32.sub
      local.get 2
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.const 16
      local.get 2
      i32.const 11
      i32.add
      i32.const -8
      i32.and
      local.get 2
      i32.const 11
      i32.lt_u
      select
      local.tee 4
      i32.add
      i32.const 12
      i32.add
      call $_ZN8dlmalloc8dlmalloc8Dlmalloc6malloc17h819baa7bf6511e91E
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const -8
      i32.add
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const -1
          i32.add
          local.tee 5
          local.get 2
          i32.and
          br_if 0 (;@3;)
          local.get 3
          local.set 1
          br 1 (;@2;)
        end
        local.get 2
        i32.const -4
        i32.add
        local.tee 6
        i32.load
        local.tee 7
        i32.const -8
        i32.and
        local.get 5
        local.get 2
        i32.add
        i32.const 0
        local.get 1
        i32.sub
        i32.and
        i32.const -8
        i32.add
        local.tee 2
        local.get 2
        local.get 1
        i32.add
        local.get 2
        local.get 3
        i32.sub
        i32.const 16
        i32.gt_u
        select
        local.tee 1
        local.get 3
        i32.sub
        local.tee 2
        i32.sub
        local.set 5
        block  ;; label = @3
          local.get 7
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 5
          local.get 1
          i32.load offset=4
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store offset=4
          local.get 1
          local.get 5
          i32.add
          local.tee 5
          local.get 5
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 6
          local.get 2
          local.get 6
          i32.load
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 1
          local.get 1
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          local.get 3
          local.get 2
          call $_ZN8dlmalloc8dlmalloc8Dlmalloc13dispose_chunk17h749c777d9514dd45E
          br 1 (;@2;)
        end
        local.get 3
        i32.load
        local.set 3
        local.get 1
        local.get 5
        i32.store offset=4
        local.get 1
        local.get 3
        local.get 2
        i32.add
        i32.store
      end
      block  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        i32.load
        local.tee 2
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const -8
        i32.and
        local.tee 3
        local.get 4
        i32.const 16
        i32.add
        i32.le_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 4
        i32.add
        local.get 4
        local.get 2
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        local.get 1
        local.get 4
        i32.add
        local.tee 2
        local.get 3
        local.get 4
        i32.sub
        local.tee 4
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 1
        local.get 3
        i32.add
        local.tee 3
        local.get 3
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 2
        local.get 4
        call $_ZN8dlmalloc8dlmalloc8Dlmalloc13dispose_chunk17h749c777d9514dd45E
      end
      local.get 1
      i32.const 8
      i32.add
      local.set 3
    end
    local.get 3)
  (func $_ZN5alloc5alloc18handle_alloc_error17h0d29a13af080ef31E (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $rust_oom
    unreachable)
  (func $_ZN5alloc7raw_vec17capacity_overflow17hd09dcfb79c25058cE (type 9)
    i32.const 1048848
    i32.const 17
    i32.const 1048868
    call $_ZN4core9panicking5panic17hf103660e9eaae571E
    unreachable)
  (func $_ZN4core3ops8function6FnOnce9call_once17h46a1a2692cba74d8E (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    drop
    loop (result i32)  ;; label = @1
      br 0 (;@1;)
    end)
  (func $_ZN4core3ptr13drop_in_place17h02c7d5d011dc2c8bE (type 6) (param i32))
  (func $_ZN4core9panicking18panic_bounds_check17h11a568b44f69a96aE (type 3) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 3
    i32.const 44
    i32.add
    i32.const 12
    i32.store
    local.get 3
    i64.const 2
    i64.store offset=12 align=4
    local.get 3
    i32.const 1048952
    i32.store offset=8
    local.get 3
    i32.const 12
    i32.store offset=36
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 3
    local.get 3
    i32.store offset=40
    local.get 3
    local.get 3
    i32.const 4
    i32.add
    i32.store offset=32
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core9panicking9panic_fmt17h775d5c012939dd41E
    unreachable)
  (func $_ZN4core9panicking5panic17hf103660e9eaae571E (type 3) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    local.get 3
    i32.const 1048884
    i32.store offset=16
    local.get 3
    i64.const 1
    i64.store offset=4 align=4
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 24
    i32.add
    i32.store
    local.get 3
    local.get 2
    call $_ZN4core9panicking9panic_fmt17h775d5c012939dd41E
    unreachable)
  (func $_ZN4core9panicking9panic_fmt17h775d5c012939dd41E (type 0) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 1048884
    i32.store offset=4
    local.get 2
    i32.const 1048884
    i32.store
    local.get 2
    call $rust_begin_unwind
    unreachable)
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h96837d6d74e735d0E (type 2) (param i32 i32) (result i32)
    local.get 0
    i64.load32_u
    i32.const 1
    local.get 1
    call $_ZN4core3fmt3num3imp7fmt_u6417h094a759641d7a122E)
  (func $_ZN4core3fmt5write17hafbb0a7aa3401794E (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 36
    i32.add
    local.get 1
    i32.store
    local.get 3
    i32.const 3
    i32.store8 offset=40
    local.get 3
    i64.const 137438953472
    i64.store offset=8
    local.get 3
    local.get 0
    i32.store offset=32
    local.get 3
    i32.const 0
    i32.store offset=24
    local.get 3
    i32.const 0
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.load offset=8
              local.tee 4
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.load
              local.set 5
              local.get 2
              i32.load offset=4
              local.tee 6
              local.get 2
              i32.const 12
              i32.add
              i32.load
              local.tee 7
              local.get 7
              local.get 6
              i32.gt_u
              select
              local.tee 8
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              local.get 5
              i32.load
              local.get 5
              i32.load offset=4
              local.get 1
              i32.load offset=12
              call_indirect (type 1)
              br_if 3 (;@2;)
              local.get 5
              i32.const 12
              i32.add
              local.set 0
              local.get 2
              i32.load offset=20
              local.set 9
              local.get 2
              i32.load offset=16
              local.set 10
              local.get 8
              local.set 11
              loop  ;; label = @6
                local.get 3
                local.get 4
                i32.const 28
                i32.add
                i32.load8_u
                i32.store8 offset=40
                local.get 3
                local.get 4
                i32.const 4
                i32.add
                i64.load align=4
                i64.const 32
                i64.rotl
                i64.store offset=8
                local.get 4
                i32.const 24
                i32.add
                i32.load
                local.set 2
                i32.const 0
                local.set 7
                i32.const 0
                local.set 1
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 4
                      i32.const 20
                      i32.add
                      i32.load
                      br_table 1 (;@8;) 0 (;@9;) 2 (;@7;) 1 (;@8;)
                    end
                    block  ;; label = @9
                      local.get 2
                      local.get 9
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 2
                      local.get 9
                      i32.const 1049212
                      call $_ZN4core9panicking18panic_bounds_check17h11a568b44f69a96aE
                      unreachable
                    end
                    local.get 2
                    i32.const 3
                    i32.shl
                    local.set 12
                    i32.const 0
                    local.set 1
                    local.get 10
                    local.get 12
                    i32.add
                    local.tee 12
                    i32.load offset=4
                    i32.const 13
                    i32.ne
                    br_if 1 (;@7;)
                    local.get 12
                    i32.load
                    i32.load
                    local.set 2
                  end
                  i32.const 1
                  local.set 1
                end
                local.get 3
                local.get 2
                i32.store offset=20
                local.get 3
                local.get 1
                i32.store offset=16
                local.get 4
                i32.const 16
                i32.add
                i32.load
                local.set 2
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 4
                      i32.const 12
                      i32.add
                      i32.load
                      br_table 1 (;@8;) 0 (;@9;) 2 (;@7;) 1 (;@8;)
                    end
                    block  ;; label = @9
                      local.get 2
                      local.get 9
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 2
                      local.get 9
                      i32.const 1049212
                      call $_ZN4core9panicking18panic_bounds_check17h11a568b44f69a96aE
                      unreachable
                    end
                    local.get 2
                    i32.const 3
                    i32.shl
                    local.set 1
                    local.get 10
                    local.get 1
                    i32.add
                    local.tee 1
                    i32.load offset=4
                    i32.const 13
                    i32.ne
                    br_if 1 (;@7;)
                    local.get 1
                    i32.load
                    i32.load
                    local.set 2
                  end
                  i32.const 1
                  local.set 7
                end
                local.get 3
                local.get 2
                i32.store offset=28
                local.get 3
                local.get 7
                i32.store offset=24
                block  ;; label = @7
                  local.get 4
                  i32.load
                  local.tee 2
                  local.get 9
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 10
                  local.get 2
                  i32.const 3
                  i32.shl
                  i32.add
                  local.tee 2
                  i32.load
                  local.get 3
                  i32.const 8
                  i32.add
                  local.get 2
                  i32.load offset=4
                  call_indirect (type 2)
                  br_if 5 (;@2;)
                  local.get 11
                  i32.const -1
                  i32.add
                  local.tee 11
                  i32.eqz
                  br_if 4 (;@3;)
                  local.get 4
                  i32.const 32
                  i32.add
                  local.set 4
                  local.get 0
                  i32.const -4
                  i32.add
                  local.set 2
                  local.get 0
                  i32.load
                  local.set 1
                  local.get 0
                  i32.const 8
                  i32.add
                  local.set 0
                  local.get 3
                  i32.load offset=32
                  local.get 2
                  i32.load
                  local.get 1
                  local.get 3
                  i32.load offset=36
                  i32.load offset=12
                  call_indirect (type 1)
                  i32.eqz
                  br_if 1 (;@6;)
                  br 5 (;@2;)
                end
              end
              local.get 2
              local.get 9
              i32.const 1049196
              call $_ZN4core9panicking18panic_bounds_check17h11a568b44f69a96aE
              unreachable
            end
            local.get 2
            i32.load
            local.set 5
            local.get 2
            i32.load offset=4
            local.tee 6
            local.get 2
            i32.const 20
            i32.add
            i32.load
            local.tee 4
            local.get 4
            local.get 6
            i32.gt_u
            select
            local.tee 8
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.load offset=16
            local.set 4
            local.get 0
            local.get 5
            i32.load
            local.get 5
            i32.load offset=4
            local.get 1
            i32.load offset=12
            call_indirect (type 1)
            br_if 2 (;@2;)
            local.get 5
            i32.const 12
            i32.add
            local.set 0
            local.get 8
            local.set 2
            loop  ;; label = @5
              local.get 4
              i32.load
              local.get 3
              i32.const 8
              i32.add
              local.get 4
              i32.const 4
              i32.add
              i32.load
              call_indirect (type 2)
              br_if 3 (;@2;)
              local.get 2
              i32.const -1
              i32.add
              local.tee 2
              i32.eqz
              br_if 2 (;@3;)
              local.get 4
              i32.const 8
              i32.add
              local.set 4
              local.get 0
              i32.const -4
              i32.add
              local.set 1
              local.get 0
              i32.load
              local.set 7
              local.get 0
              i32.const 8
              i32.add
              local.set 0
              local.get 3
              i32.load offset=32
              local.get 1
              i32.load
              local.get 7
              local.get 3
              i32.load offset=36
              i32.load offset=12
              call_indirect (type 1)
              i32.eqz
              br_if 0 (;@5;)
              br 3 (;@2;)
            end
          end
          i32.const 0
          local.set 8
        end
        block  ;; label = @3
          local.get 6
          local.get 8
          i32.le_u
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=32
          local.get 5
          local.get 8
          i32.const 3
          i32.shl
          i32.add
          local.tee 4
          i32.load
          local.get 4
          i32.load offset=4
          local.get 3
          i32.load offset=36
          i32.load offset=12
          call_indirect (type 1)
          br_if 1 (;@2;)
        end
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      i32.const 1
      local.set 4
    end
    local.get 3
    i32.const 48
    i32.add
    global.set 0
    local.get 4)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hed8469571ab867edE (type 5) (param i32) (result i64)
    i64.const -6438272686846998974)
  (func $_ZN4core5panic9PanicInfo7message17h7e4e229b163b9946E (type 7) (param i32) (result i32)
    local.get 0
    i32.load offset=8)
  (func $_ZN4core5panic9PanicInfo8location17hdc237791919cdce2E (type 7) (param i32) (result i32)
    local.get 0
    i32.load offset=12)
  (func $_ZN4core3fmt9Formatter12pad_integral17heb026d6d683b5aecE (type 10) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.eqz
        br_if 0 (;@2;)
        i32.const 43
        i32.const 1114112
        local.get 0
        i32.load
        local.tee 6
        i32.const 1
        i32.and
        local.tee 1
        select
        local.set 7
        local.get 1
        local.get 5
        i32.add
        local.set 8
        br 1 (;@1;)
      end
      local.get 5
      i32.const 1
      i32.add
      local.set 8
      local.get 0
      i32.load
      local.set 6
      i32.const 45
      local.set 7
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      i32.const 0
      local.set 9
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.set 10
        local.get 2
        local.set 1
        loop  ;; label = @3
          local.get 9
          local.get 1
          i32.load8_u
          i32.const 192
          i32.and
          i32.const 128
          i32.eq
          i32.add
          local.set 9
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 10
          i32.const -1
          i32.add
          local.tee 10
          br_if 0 (;@3;)
        end
      end
      local.get 8
      local.get 3
      i32.add
      local.get 9
      i32.sub
      local.set 8
    end
    i32.const 1
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=8
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 7
        local.get 2
        local.get 3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hcfb0f2d3505957abE
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=24
        local.get 4
        local.get 5
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 1)
        local.set 1
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i32.const 12
        i32.add
        i32.load
        local.tee 9
        local.get 8
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        local.get 7
        local.get 2
        local.get 3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hcfb0f2d3505957abE
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=24
        local.get 4
        local.get 5
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 1)
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 6
                i32.const 8
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.load offset=4
                local.set 6
                local.get 0
                i32.const 48
                i32.store offset=4
                local.get 0
                i32.load8_u offset=32
                local.set 11
                i32.const 1
                local.set 1
                local.get 0
                i32.const 1
                i32.store8 offset=32
                local.get 0
                local.get 7
                local.get 2
                local.get 3
                call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hcfb0f2d3505957abE
                br_if 5 (;@1;)
                i32.const 0
                local.set 1
                local.get 9
                local.get 8
                i32.sub
                local.tee 10
                local.set 3
                i32.const 1
                local.get 0
                i32.load8_u offset=32
                local.tee 9
                local.get 9
                i32.const 3
                i32.eq
                select
                i32.const 3
                i32.and
                br_table 3 (;@3;) 2 (;@4;) 1 (;@5;) 2 (;@4;) 3 (;@3;)
              end
              i32.const 0
              local.set 1
              local.get 9
              local.get 8
              i32.sub
              local.tee 9
              local.set 8
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 1
                    local.get 0
                    i32.load8_u offset=32
                    local.tee 10
                    local.get 10
                    i32.const 3
                    i32.eq
                    select
                    i32.const 3
                    i32.and
                    br_table 2 (;@6;) 1 (;@7;) 0 (;@8;) 1 (;@7;) 2 (;@6;)
                  end
                  local.get 9
                  i32.const 1
                  i32.shr_u
                  local.set 1
                  local.get 9
                  i32.const 1
                  i32.add
                  i32.const 1
                  i32.shr_u
                  local.set 8
                  br 1 (;@6;)
                end
                i32.const 0
                local.set 8
                local.get 9
                local.set 1
              end
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              loop  ;; label = @6
                local.get 1
                i32.const -1
                i32.add
                local.tee 1
                i32.eqz
                br_if 4 (;@2;)
                local.get 0
                i32.load offset=24
                local.get 0
                i32.load offset=4
                local.get 0
                i32.load offset=28
                i32.load offset=16
                call_indirect (type 2)
                i32.eqz
                br_if 0 (;@6;)
              end
              i32.const 1
              return
            end
            local.get 10
            i32.const 1
            i32.shr_u
            local.set 1
            local.get 10
            i32.const 1
            i32.add
            i32.const 1
            i32.shr_u
            local.set 3
            br 1 (;@3;)
          end
          i32.const 0
          local.set 3
          local.get 10
          local.set 1
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            i32.const -1
            i32.add
            local.tee 1
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            i32.load offset=24
            local.get 0
            i32.load offset=4
            local.get 0
            i32.load offset=28
            i32.load offset=16
            call_indirect (type 2)
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          return
        end
        local.get 0
        i32.load offset=4
        local.set 10
        i32.const 1
        local.set 1
        local.get 0
        i32.load offset=24
        local.get 4
        local.get 5
        local.get 0
        i32.load offset=28
        i32.load offset=12
        call_indirect (type 1)
        br_if 1 (;@1;)
        local.get 3
        i32.const 1
        i32.add
        local.set 9
        local.get 0
        i32.load offset=28
        local.set 3
        local.get 0
        i32.load offset=24
        local.set 2
        block  ;; label = @3
          loop  ;; label = @4
            local.get 9
            i32.const -1
            i32.add
            local.tee 9
            i32.eqz
            br_if 1 (;@3;)
            i32.const 1
            local.set 1
            local.get 2
            local.get 10
            local.get 3
            i32.load offset=16
            call_indirect (type 2)
            br_if 3 (;@1;)
            br 0 (;@4;)
          end
        end
        local.get 0
        local.get 11
        i32.store8 offset=32
        local.get 0
        local.get 6
        i32.store offset=4
        i32.const 0
        return
      end
      local.get 0
      i32.load offset=4
      local.set 10
      i32.const 1
      local.set 1
      local.get 0
      local.get 7
      local.get 2
      local.get 3
      call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hcfb0f2d3505957abE
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=24
      local.get 4
      local.get 5
      local.get 0
      i32.load offset=28
      i32.load offset=12
      call_indirect (type 1)
      br_if 0 (;@1;)
      local.get 8
      i32.const 1
      i32.add
      local.set 9
      local.get 0
      i32.load offset=28
      local.set 3
      local.get 0
      i32.load offset=24
      local.set 0
      loop  ;; label = @2
        block  ;; label = @3
          local.get 9
          i32.const -1
          i32.add
          local.tee 9
          br_if 0 (;@3;)
          i32.const 0
          return
        end
        i32.const 1
        local.set 1
        local.get 0
        local.get 10
        local.get 3
        i32.load offset=16
        call_indirect (type 2)
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hcfb0f2d3505957abE (type 4) (param i32 i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 1114112
        i32.eq
        br_if 0 (;@2;)
        i32.const 1
        local.set 4
        local.get 0
        i32.load offset=24
        local.get 1
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=16
        call_indirect (type 2)
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        local.get 2
        br_if 0 (;@2;)
        i32.const 0
        return
      end
      local.get 0
      i32.load offset=24
      local.get 2
      local.get 3
      local.get 0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 1)
      local.set 4
    end
    local.get 4)
  (func $_ZN4core3fmt3num3imp7fmt_u6417h094a759641d7a122E (type 11) (param i64 i32 i32) (result i32)
    (local i32 i32 i64 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    i32.const 39
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i64.const 10000
        i64.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 5
        br 1 (;@1;)
      end
      i32.const 39
      local.set 4
      loop  ;; label = @2
        local.get 3
        i32.const 9
        i32.add
        local.get 4
        i32.add
        local.tee 6
        i32.const -4
        i32.add
        local.get 0
        local.get 0
        i64.const 10000
        i64.div_u
        local.tee 5
        i64.const 10000
        i64.mul
        i64.sub
        i32.wrap_i64
        local.tee 7
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 8
        i32.const 1
        i32.shl
        i32.const 1048968
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 6
        i32.const -2
        i32.add
        local.get 7
        local.get 8
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1048968
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 4
        i32.const -4
        i32.add
        local.set 4
        local.get 0
        i64.const 99999999
        i64.gt_u
        local.set 6
        local.get 5
        local.set 0
        local.get 6
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 5
      i32.wrap_i64
      local.tee 6
      i32.const 99
      i32.le_s
      br_if 0 (;@1;)
      local.get 3
      i32.const 9
      i32.add
      local.get 4
      i32.const -2
      i32.add
      local.tee 4
      i32.add
      local.get 5
      i32.wrap_i64
      local.tee 6
      local.get 6
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 6
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1048968
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 10
        i32.lt_s
        br_if 0 (;@2;)
        local.get 3
        i32.const 9
        i32.add
        local.get 4
        i32.const -2
        i32.add
        local.tee 4
        i32.add
        local.get 6
        i32.const 1
        i32.shl
        i32.const 1048968
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br 1 (;@1;)
      end
      local.get 3
      i32.const 9
      i32.add
      local.get 4
      i32.const -1
      i32.add
      local.tee 4
      i32.add
      local.get 6
      i32.const 48
      i32.add
      i32.store8
    end
    local.get 2
    local.get 1
    i32.const 1048884
    i32.const 0
    local.get 3
    i32.const 9
    i32.add
    local.get 4
    i32.add
    i32.const 39
    local.get 4
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17heb026d6d683b5aecE
    local.set 4
    local.get 3
    i32.const 48
    i32.add
    global.set 0
    local.get 4)
  (func $memcpy (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (table (;0;) 16 16 funcref)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1049712))
  (global (;2;) i32 (i32.const 1049712))
  (export "memory" (memory 0))
  (export "add" (func $add))
  (export "div" (func $div))
  (export "sub" (func $sub))
  (export "mul" (func $mul))
  (export "mod" (func $mod))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (elem (;0;) (i32.const 1) func $_ZN3std5alloc24default_alloc_error_hook17hfecc4245dce2d452E $_ZN4core3ptr13drop_in_place17h02f38816662c795fE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h59e051f7d98a1937E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h23408ee4772422faE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hd82968a31c237e7fE $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h0a5da9a44a1cbff0E $_ZN4core3ptr13drop_in_place17hf5f9449f5a7fe52cE $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h7e1225caf27b6ac8E $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h0bf3b03be36535b6E $_ZN4core3ptr13drop_in_place17h068bd46394458882E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hd179329e2d7eb90bE $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h96837d6d74e735d0E $_ZN4core3ops8function6FnOnce9call_once17h46a1a2692cba74d8E $_ZN4core3ptr13drop_in_place17h02c7d5d011dc2c8bE $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hed8469571ab867edE)
  (data (;0;) (i32.const 1048576) "src/lib.rs\00\00\00\00\10\00\0a\00\00\00\0b\00\00\00\09\00\00\00\00\00\00\00attempt to divide with overflow\00\02\00\00\00\04\00\00\00\04\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00called `Option::unwrap()` on a `None` valuelibrary/std/src/panicking.rs\00\93\00\10\00\1c\00\00\00\e1\01\00\00\1f\00\00\00\93\00\10\00\1c\00\00\00\e2\01\00\00\1e\00\00\00\07\00\00\00\10\00\00\00\04\00\00\00\08\00\00\00\09\00\00\00\0a\00\00\00\0c\00\00\00\04\00\00\00\0b\00\00\00library/alloc/src/raw_vec.rscapacity overflow\00\00\00\f4\00\10\00\1c\00\00\00\1d\02\00\00\05\00\00\00\0e\00\00\00\00\00\00\00\01\00\00\00\0f\00\00\00index out of bounds: the len is  but the index is \00\00D\01\10\00 \00\00\00d\01\10\00\12\00\00\0000010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899library/core/src/fmt/mod.rs\00P\02\10\00\1b\00\00\00W\04\00\00\11\00\00\00P\02\10\00\1b\00\00\00a\04\00\00$\00\00\00"))
