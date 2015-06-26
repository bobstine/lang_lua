--  idioms for lua

-- comments

   line that starts with --
   
   open with ---[[ and close with --]]; delete one - to activate


-- long strings/lines

   embed pagination: open with [[  and close with ]]

   match brackets using equal signs:  [==[     ]==]


-- assignment

   init to zero if a[3] not defined
   	x = a[3] or 0

   max of pair
        m = (x>y) and x or y

   swap
	x,y = y,x		evals both on rhs first

   tables
        x = {1,2,3,45,5}
	x = {a=1,b=2,c=3,["funky stuff"]=4}

-- capture global

   local foo = foo


-- tables

   reverse lookup
      rt={}; for k,v in pairs(t) do rt[v]=k end

   values in table
      table.unpack(tab)

-- iterator functions

   string to character iterator
      string.gmatch(s,".")

-- function arguments 

   parens optional for one argument
   	  f(x) === f x
	  f{x,y} === f({x,y})

   pads as in multiple assignment
   (ie, not there are nil, extra get tossed)

   named arguments
   	 f {x=1,y=2}

   convert table values to arguments (apply)
      f(table.unpack(tab))

-- functions and closures

   anonymous functions
      f = function (s) ... end  === function f(s) ... end

   recursive local functions
      define a local name first. in following, fact would not be known without
      prior localization (even though the local version is empty)
      local fact
      fact = function (n) if (n==0) then return 1 else return n*fact(n-1) end end

      to automatically benefit, use the syntax
      	 local function fact (n) ...


-- data structures

   linked list  
      list = nil                  -- sentinel for end
      list = {next=list,value=v}  -- insert v at head

   efficient concatenation
      table[#table+1] = next element

-- output

   strings with embedded quotes
      io.write(string.format("%q",o))
      