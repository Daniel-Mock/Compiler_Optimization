/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.0.4"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* Copy the first part of user declarations.  */
#line 1 "cmm.y" /* yacc.c:339  */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/IRBuilder.h"

#include "llvm/Bitcode/BitcodeWriter.h"
#include "llvm/ADT/StringSet.h"
#include "llvm/ADT/StringMap.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SystemUtils.h"
#include "llvm/Support/ToolOutputFile.h"

#include <memory>
#include <algorithm>
#include <list>
#include <vector>
#include <utility>
#include <stack>
#include "list.h"
#include "symbol.h"

using namespace llvm;
using namespace std;

using parameter = pair<Type*,const char*>;
using parameter_list = std::list<parameter>;

/*
typedef struct {
  BasicBlock* expr;
  BasicBlock* body;
  BasicBlock* reinit;
  BasicBlock* exit;
} loop_info;
*/

stack<loop_info> loop_stack;

int num_errors;

extern int yylex();   /* lexical analyzer generated from lex.l */

int yyerror(const char *error);
int parser_error(const char*);

void cmm_abort();
char *get_filename();
int get_lineno();

int loops_found=0;

extern Module *M;
extern LLVMContext TheContext;

Function *Fun;
IRBuilder<> *Builder;

Value* BuildFunction(Type* RetType, const char *name,
			   parameter_list *params);


#line 135 "cmm.y.cpp" /* yacc.c:339  */

# ifndef YY_NULLPTR
#  if defined __cplusplus && 201103L <= __cplusplus
#   define YY_NULLPTR nullptr
#  else
#   define YY_NULLPTR 0
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* In a future release of Bison, this section will be replaced
   by #include "cmm.y.hpp".  */
#ifndef YY_YY_CMM_Y_HPP_INCLUDED
# define YY_YY_CMM_Y_HPP_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    SEMICOLON = 258,
    COMMA = 259,
    MYEOF = 260,
    LBRACE = 261,
    RBRACE = 262,
    LPAREN = 263,
    RPAREN = 264,
    LBRACKET = 265,
    RBRACKET = 266,
    ASSIGN = 267,
    PLUS = 268,
    MINUS = 269,
    STAR = 270,
    DIV = 271,
    MOD = 272,
    LT = 273,
    GT = 274,
    LTE = 275,
    GTE = 276,
    EQ = 277,
    NEQ = 278,
    BITWISE_OR = 279,
    BITWISE_XOR = 280,
    LSHIFT = 281,
    RSHIFT = 282,
    BITWISE_INVERT = 283,
    DOT = 284,
    AMPERSAND = 285,
    FOR = 286,
    WHILE = 287,
    IF = 288,
    ELSE = 289,
    DO = 290,
    RETURN = 291,
    SWITCH = 292,
    BREAK = 293,
    CONTINUE = 294,
    CASE = 295,
    COLON = 296,
    INT = 297,
    VOID = 298,
    BOOL = 299,
    I2P = 300,
    P2I = 301,
    SEXT = 302,
    ZEXT = 303,
    CONSTANT_INTEGER = 304,
    ID = 305
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 72 "cmm.y" /* yacc.c:355  */

  int inum;
  char * id;
  Type*  type;
  Value* value;
  parameter_list *plist;
  vector<Value*> *arglist;
  BasicBlock* bb;

#line 236 "cmm.y.cpp" /* yacc.c:355  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_CMM_Y_HPP_INCLUDED  */

/* Copy the second part of user declarations.  */

#line 253 "cmm.y.cpp" /* yacc.c:358  */

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif

#ifndef YY_ATTRIBUTE
# if (defined __GNUC__                                               \
      && (2 < __GNUC__ || (__GNUC__ == 2 && 96 <= __GNUC_MINOR__)))  \
     || defined __SUNPRO_C && 0x5110 <= __SUNPRO_C
#  define YY_ATTRIBUTE(Spec) __attribute__(Spec)
# else
#  define YY_ATTRIBUTE(Spec) /* empty */
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# define YY_ATTRIBUTE_PURE   YY_ATTRIBUTE ((__pure__))
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# define YY_ATTRIBUTE_UNUSED YY_ATTRIBUTE ((__unused__))
#endif

#if !defined _Noreturn \
     && (!defined __STDC_VERSION__ || __STDC_VERSION__ < 201112)
# if defined _MSC_VER && 1200 <= _MSC_VER
#  define _Noreturn __declspec (noreturn)
# else
#  define _Noreturn YY_ATTRIBUTE ((__noreturn__))
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN \
    _Pragma ("GCC diagnostic push") \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")\
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif


#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYSIZE_T yynewbytes;                                            \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / sizeof (*yyptr);                          \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, (Count) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYSIZE_T yyi;                         \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  8
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   622

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  51
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  46
/* YYNRULES -- Number of rules.  */
#define YYNRULES  124
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  249

/* YYTRANSLATE[YYX] -- Symbol number corresponding to YYX as returned
   by yylex, with out-of-bounds checking.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   305

#define YYTRANSLATE(YYX)                                                \
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, without out-of-bounds checking.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,   122,   122,   123,   124,   130,   131,   136,   134,   147,
     146,   157,   162,   170,   170,   173,   177,   185,   188,   196,
     201,   206,   211,   219,   220,   221,   222,   223,   224,   225,
     226,   229,   230,   233,   240,   249,   250,   253,   254,   257,
     263,   257,   271,   272,   275,   276,   279,   282,   285,   290,
     307,   289,   334,   340,   349,   339,   362,   372,   378,   361,
     390,   393,   394,   397,   402,   408,   420,   425,   429,   430,
     431,   432,   436,   440,   441,   446,   450,   454,   458,   459,
     460,   464,   468,   472,   473,   474,   475,   476,   477,   478,
     479,   480,   487,   487,   491,   492,   496,   497,   498,   499,
     500,   501,   505,   509,   513,   524,   525,   529,   530,   531,
     532,   533,   534,   535,   539,   543,   547,   551,   552,   553,
     560,   561,   566,   571,   578
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 0
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "SEMICOLON", "COMMA", "MYEOF", "LBRACE",
  "RBRACE", "LPAREN", "RPAREN", "LBRACKET", "RBRACKET", "ASSIGN", "PLUS",
  "MINUS", "STAR", "DIV", "MOD", "LT", "GT", "LTE", "GTE", "EQ", "NEQ",
  "BITWISE_OR", "BITWISE_XOR", "LSHIFT", "RSHIFT", "BITWISE_INVERT", "DOT",
  "AMPERSAND", "FOR", "WHILE", "IF", "ELSE", "DO", "RETURN", "SWITCH",
  "BREAK", "CONTINUE", "CASE", "COLON", "INT", "VOID", "BOOL", "I2P",
  "P2I", "SEXT", "ZEXT", "CONSTANT_INTEGER", "ID", "$accept",
  "translation_unit", "external_declaration", "function_definition", "$@1",
  "$@2", "global_declaration", "opt_initializer", "type_specifier",
  "param_list_opt", "param_list", "statement", "expr_stmt",
  "local_declaration", "local_declaration_list",
  "local_declaration_list_opt", "compound_stmt", "$@3", "$@4",
  "statement_list_opt", "statement_list", "break_stmt", "case_stmt",
  "continue_stmt", "selection_stmt", "$@5", "$@6", "iteration_stmt", "$@7",
  "$@8", "$@9", "$@10", "$@11", "expr_opt", "return_stmt",
  "bool_expression", "assign_expression", "expression",
  "argument_list_opt", "argument_list", "unary_expression",
  "primary_expression", "lvalue_location", "constant_expression",
  "unary_constant_expression", "constant", YY_NULLPTR
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   296,   297,   298,   299,   300,   301,   302,   303,   304,
     305
};
# endif

#define YYPACT_NINF -171

#define yypact_value_is_default(Yystate) \
  (!!((Yystate) == (-171)))

#define YYTABLE_NINF -1

#define yytable_value_is_error(Yytable_value) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
      49,  -171,  -171,     8,  -171,  -171,  -171,    -5,  -171,  -171,
    -171,   -47,    14,    15,    49,   244,    21,    49,    25,     4,
      34,    45,   244,     3,     3,     3,    61,  -171,   525,  -171,
    -171,  -171,    86,  -171,    52,  -171,  -171,    49,   452,  -171,
    -171,  -171,   244,   244,   244,   244,   244,   244,   244,   244,
     244,   244,   244,  -171,  -171,    95,     6,  -171,   471,   115,
     115,  -171,  -171,  -171,   549,   572,    98,    98,   254,    95,
    -171,  -171,    59,  -171,  -171,  -171,    49,  -171,    53,  -171,
      49,   145,    77,   124,  -171,  -171,   201,   204,   204,    85,
     204,    10,   129,  -171,   142,   145,   193,   147,   161,   169,
     244,   149,   171,   178,   179,   180,   189,  -171,  -171,  -171,
    -171,   145,  -171,  -171,  -171,  -171,  -171,  -171,   195,   507,
    -171,  -171,   153,  -171,   124,   196,   300,   190,  -171,  -171,
    -171,   201,   194,  -171,  -171,  -171,   201,   197,   201,   172,
    -171,   281,   201,  -171,  -171,   249,   201,   201,   201,   201,
     201,   201,   203,  -171,  -171,   201,   201,   201,   201,   201,
     201,   201,   201,   201,   201,   201,   201,   201,   201,   201,
     201,   201,   201,   200,  -171,  -171,   319,   208,  -171,   201,
    -171,   507,   205,  -171,   338,  -171,   357,   376,   395,   414,
     433,   507,   211,   218,  -171,   130,   130,  -171,  -171,  -171,
     543,   543,   543,   543,   543,   543,   567,   590,   154,   154,
     595,   489,   507,  -171,  -171,  -171,  -171,   215,   201,   145,
    -171,  -171,  -171,  -171,  -171,  -171,   201,  -171,   201,   216,
     145,   217,  -171,   507,   209,   145,  -171,   224,  -171,  -171,
     199,  -171,   201,   145,   219,  -171,  -171,   145,  -171
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,    15,    16,     0,     2,     5,     6,     0,     1,     4,
       3,     0,    14,    14,    17,     0,     0,    17,     0,     0,
       0,    18,     0,     0,     0,     0,     0,   124,    13,   107,
     120,    12,     0,    11,     0,    21,     7,     0,     0,   122,
     121,   123,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     9,    22,     0,     0,   119,     0,   113,
     114,   115,   116,   117,   108,   109,   111,   112,   110,     0,
      39,     8,     0,    19,   118,    10,    37,    20,     0,    35,
      38,    42,     0,    14,    36,    31,     0,     0,     0,     0,
       0,     0,     0,    53,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   104,    44,    23,    24,
      40,    43,    28,    30,    29,    25,    26,    27,     0,    67,
      68,    96,   102,   103,    14,     0,     0,   102,   104,   100,
      99,     0,     0,    98,   101,    97,    61,     0,     0,     0,
      63,     0,     0,    46,    48,     0,     0,     0,     0,     0,
       0,    92,     0,    45,    32,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    34,    91,     0,     0,    62,     0,
      49,    65,     0,    64,     0,    47,     0,     0,     0,     0,
       0,    94,     0,    93,    41,    80,    81,    82,    83,    84,
      74,    75,    76,    77,    72,    73,    69,    70,    78,    79,
      71,     0,    66,    33,   106,    56,    54,     0,     0,     0,
      85,    86,    87,    89,    88,    90,     0,   105,     0,     0,
       0,     0,    52,    95,     0,     0,    50,     0,    57,    55,
       0,    60,    61,     0,     0,    51,    58,     0,    59
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -171,  -171,   227,  -171,  -171,  -171,  -171,     5,    30,   238,
    -171,   -91,  -171,   155,  -171,  -171,   -40,  -171,  -171,  -171,
    -171,  -171,  -171,  -171,  -171,  -171,  -171,  -171,  -171,  -171,
    -171,  -171,  -171,    -6,  -171,  -170,  -134,   -85,  -171,  -171,
      17,    51,   -81,   -10,   -18,    74
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,     3,     4,     5,    55,    69,     6,    16,     7,    20,
      21,   107,   108,    79,    80,    81,   109,    76,   152,   110,
     111,   112,   113,   114,   115,   217,   240,   116,   137,   229,
     228,   242,   247,   177,   117,   180,   118,   119,   192,   193,
     120,   121,   127,    28,    29,   123
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_uint8 yytable[] =
{
     122,   126,   178,    13,   139,    39,    40,    41,     8,   216,
      11,   141,    38,     9,   122,    71,    23,    24,    18,    34,
     153,    72,    14,    17,    31,   132,    15,    15,    33,    75,
     122,    25,    58,    59,    60,    61,    62,    63,    64,    65,
      66,    67,    68,    36,    19,    12,   176,    19,   231,    37,
       1,     2,    27,   181,    35,   122,    73,   184,   234,    27,
     128,   186,   187,   188,   189,   190,   191,    56,    82,    42,
     195,   196,   197,   198,   199,   200,   201,   202,   203,   204,
     205,   206,   207,   208,   209,   210,   211,   212,   125,    30,
     145,     1,     2,   131,   181,    53,    30,    30,    30,    30,
     132,    70,    54,    83,   129,   130,    78,   134,   178,    77,
      78,    43,    44,    45,    46,    47,    30,    30,    30,    30,
      30,    30,    30,    30,    30,    30,    30,   124,   232,   173,
      45,    46,    47,   181,    27,   128,    15,   136,   122,   236,
     133,   233,   135,   181,   239,   157,   158,   159,    85,   122,
     138,    70,   245,    86,   122,   142,   248,   146,    87,    88,
      89,   122,   122,   171,   143,   172,   122,   155,   156,   157,
     158,   159,   144,    90,    30,    91,    92,    93,    94,   147,
      95,    96,    97,    98,    99,   100,   148,   149,   150,   101,
     102,   103,   104,   105,    27,   106,   140,   151,   154,   174,
     171,    86,   131,   213,   182,   179,    87,    88,    89,    86,
     194,   215,   238,   218,    87,    88,    89,    87,    88,    89,
     225,    90,   226,    91,   230,   235,   237,   241,   246,    90,
      10,    91,    90,   243,    91,    84,   244,   101,   102,   103,
     104,   105,    27,   106,     0,   101,   102,   103,   104,   105,
      27,   106,    22,    27,   128,    32,     0,    23,    24,     0,
       0,     0,    43,    44,    45,    46,    47,    43,    44,    45,
      46,    47,    25,    48,    49,    50,    51,     0,     0,    52,
      50,    51,     0,     0,   183,     0,     0,     0,     0,    26,
     185,     0,     0,    27,   155,   156,   157,   158,   159,   160,
     161,   162,   163,   164,   165,   166,   167,   168,   169,   175,
       0,   170,     0,   155,   156,   157,   158,   159,   160,   161,
     162,   163,   164,   165,   166,   167,   168,   169,   214,     0,
     170,     0,   155,   156,   157,   158,   159,   160,   161,   162,
     163,   164,   165,   166,   167,   168,   169,   219,     0,   170,
       0,   155,   156,   157,   158,   159,   160,   161,   162,   163,
     164,   165,   166,   167,   168,   169,   220,     0,   170,     0,
     155,   156,   157,   158,   159,   160,   161,   162,   163,   164,
     165,   166,   167,   168,   169,   221,     0,   170,     0,   155,
     156,   157,   158,   159,   160,   161,   162,   163,   164,   165,
     166,   167,   168,   169,   222,     0,   170,     0,   155,   156,
     157,   158,   159,   160,   161,   162,   163,   164,   165,   166,
     167,   168,   169,   223,     0,   170,     0,   155,   156,   157,
     158,   159,   160,   161,   162,   163,   164,   165,   166,   167,
     168,   169,   224,     0,   170,     0,   155,   156,   157,   158,
     159,   160,   161,   162,   163,   164,   165,   166,   167,   168,
     169,    57,     0,   170,     0,    43,    44,    45,    46,    47,
       0,     0,     0,     0,     0,     0,    48,    49,    50,    51,
      74,     0,    52,     0,    43,    44,    45,    46,    47,     0,
       0,     0,     0,     0,     0,    48,    49,    50,    51,     0,
     227,    52,   155,   156,   157,   158,   159,   160,   161,   162,
     163,   164,   165,   166,   167,   168,   169,     0,     0,   170,
     155,   156,   157,   158,   159,   160,   161,   162,   163,   164,
     165,   166,   167,   168,   169,     0,     0,   170,    43,    44,
      45,    46,    47,     0,     0,     0,     0,     0,     0,    48,
      49,    50,    51,     0,     0,    52,   155,   156,   157,   158,
     159,     0,    43,    44,    45,    46,    47,   166,   167,   168,
     169,     0,     0,   170,    49,    50,    51,     0,     0,    52,
     155,   156,   157,   158,   159,    43,    44,    45,    46,    47,
       0,     0,   167,   168,   169,     0,     0,   170,    50,    51,
       0,     0,    52,   155,   156,   157,   158,   159,   155,   156,
     157,   158,   159,     0,     0,     0,   168,   169,     0,     0,
     170,   168,   169
};

static const yytype_int16 yycheck[] =
{
      81,    86,   136,    50,    95,    23,    24,    25,     0,   179,
      15,    96,    22,     5,    95,    55,    13,    14,    13,    15,
     111,    15,     8,     8,     3,    15,    12,    12,     3,    69,
     111,    28,    42,    43,    44,    45,    46,    47,    48,    49,
      50,    51,    52,     9,    14,    50,   131,    17,   218,     4,
      42,    43,    49,   138,    50,   136,    50,   142,   228,    49,
      50,   146,   147,   148,   149,   150,   151,    37,    15,     8,
     155,   156,   157,   158,   159,   160,   161,   162,   163,   164,
     165,   166,   167,   168,   169,   170,   171,   172,    83,    15,
     100,    42,    43,     8,   179,     9,    22,    23,    24,    25,
      15,     6,    50,    50,    87,    88,    76,    90,   242,    50,
      80,    13,    14,    15,    16,    17,    42,    43,    44,    45,
      46,    47,    48,    49,    50,    51,    52,    50,   219,   124,
      15,    16,    17,   218,    49,    50,    12,     8,   219,   230,
      89,   226,    91,   228,   235,    15,    16,    17,     3,   230,
       8,     6,   243,     8,   235,     8,   247,     8,    13,    14,
      15,   242,   243,    10,     3,    12,   247,    13,    14,    15,
      16,    17,     3,    28,   100,    30,    31,    32,    33,     8,
      35,    36,    37,    38,    39,    40,     8,     8,     8,    44,
      45,    46,    47,    48,    49,    50,     3,     8,     3,     3,
      10,     8,     8,     3,    32,     8,    13,    14,    15,     8,
       7,     3,     3,     8,    13,    14,    15,    13,    14,    15,
       9,    28,     4,    30,     9,     9,     9,     3,     9,    28,
       3,    30,    28,    34,    30,    80,   242,    44,    45,    46,
      47,    48,    49,    50,    -1,    44,    45,    46,    47,    48,
      49,    50,     8,    49,    50,    17,    -1,    13,    14,    -1,
      -1,    -1,    13,    14,    15,    16,    17,    13,    14,    15,
      16,    17,    28,    24,    25,    26,    27,    -1,    -1,    30,
      26,    27,    -1,    -1,     3,    -1,    -1,    -1,    -1,    45,
      41,    -1,    -1,    49,    13,    14,    15,    16,    17,    18,
      19,    20,    21,    22,    23,    24,    25,    26,    27,     9,
      -1,    30,    -1,    13,    14,    15,    16,    17,    18,    19,
      20,    21,    22,    23,    24,    25,    26,    27,     9,    -1,
      30,    -1,    13,    14,    15,    16,    17,    18,    19,    20,
      21,    22,    23,    24,    25,    26,    27,     9,    -1,    30,
      -1,    13,    14,    15,    16,    17,    18,    19,    20,    21,
      22,    23,    24,    25,    26,    27,     9,    -1,    30,    -1,
      13,    14,    15,    16,    17,    18,    19,    20,    21,    22,
      23,    24,    25,    26,    27,     9,    -1,    30,    -1,    13,
      14,    15,    16,    17,    18,    19,    20,    21,    22,    23,
      24,    25,    26,    27,     9,    -1,    30,    -1,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,     9,    -1,    30,    -1,    13,    14,    15,
      16,    17,    18,    19,    20,    21,    22,    23,    24,    25,
      26,    27,     9,    -1,    30,    -1,    13,    14,    15,    16,
      17,    18,    19,    20,    21,    22,    23,    24,    25,    26,
      27,     9,    -1,    30,    -1,    13,    14,    15,    16,    17,
      -1,    -1,    -1,    -1,    -1,    -1,    24,    25,    26,    27,
       9,    -1,    30,    -1,    13,    14,    15,    16,    17,    -1,
      -1,    -1,    -1,    -1,    -1,    24,    25,    26,    27,    -1,
      11,    30,    13,    14,    15,    16,    17,    18,    19,    20,
      21,    22,    23,    24,    25,    26,    27,    -1,    -1,    30,
      13,    14,    15,    16,    17,    18,    19,    20,    21,    22,
      23,    24,    25,    26,    27,    -1,    -1,    30,    13,    14,
      15,    16,    17,    -1,    -1,    -1,    -1,    -1,    -1,    24,
      25,    26,    27,    -1,    -1,    30,    13,    14,    15,    16,
      17,    -1,    13,    14,    15,    16,    17,    24,    25,    26,
      27,    -1,    -1,    30,    25,    26,    27,    -1,    -1,    30,
      13,    14,    15,    16,    17,    13,    14,    15,    16,    17,
      -1,    -1,    25,    26,    27,    -1,    -1,    30,    26,    27,
      -1,    -1,    30,    13,    14,    15,    16,    17,    13,    14,
      15,    16,    17,    -1,    -1,    -1,    26,    27,    -1,    -1,
      30,    26,    27
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,    42,    43,    52,    53,    54,    57,    59,     0,     5,
      53,    15,    50,    50,     8,    12,    58,     8,    58,    59,
      60,    61,     8,    13,    14,    28,    45,    49,    94,    95,
      96,     3,    60,     3,    15,    50,     9,     4,    94,    95,
      95,    95,     8,    13,    14,    15,    16,    17,    24,    25,
      26,    27,    30,     9,    50,    55,    59,     9,    94,    94,
      94,    94,    94,    94,    94,    94,    94,    94,    94,    56,
       6,    67,    15,    50,     9,    67,    68,    50,    59,    64,
      65,    66,    15,    50,    64,     3,     8,    13,    14,    15,
      28,    30,    31,    32,    33,    35,    36,    37,    38,    39,
      40,    44,    45,    46,    47,    48,    50,    62,    63,    67,
      70,    71,    72,    73,    74,    75,    78,    85,    87,    88,
      91,    92,    93,    96,    50,    58,    88,    93,    50,    91,
      91,     8,    15,    92,    91,    92,     8,    79,     8,    62,
       3,    88,     8,     3,     3,    94,     8,     8,     8,     8,
       8,     8,    69,    62,     3,    13,    14,    15,    16,    17,
      18,    19,    20,    21,    22,    23,    24,    25,    26,    27,
      30,    10,    12,    58,     3,     9,    88,    84,    87,     8,
      86,    88,    32,     3,    88,    41,    88,    88,    88,    88,
      88,    88,    89,    90,     7,    88,    88,    88,    88,    88,
      88,    88,    88,    88,    88,    88,    88,    88,    88,    88,
      88,    88,    88,     3,     9,     3,    86,    76,     8,     9,
       9,     9,     9,     9,     9,     9,     4,    11,    81,    80,
       9,    86,    62,    88,    86,     9,    62,     9,     3,    62,
      77,     3,    82,    34,    84,    62,     9,    83,    62
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    51,    52,    52,    52,    53,    53,    55,    54,    56,
      54,    57,    57,    58,    58,    59,    59,    60,    60,    61,
      61,    61,    61,    62,    62,    62,    62,    62,    62,    62,
      62,    63,    63,    64,    64,    65,    65,    66,    66,    68,
      69,    67,    70,    70,    71,    71,    72,    73,    74,    76,
      77,    75,    75,    79,    80,    78,    81,    82,    83,    78,
      78,    84,    84,    85,    85,    86,    87,    87,    88,    88,
      88,    88,    88,    88,    88,    88,    88,    88,    88,    88,
      88,    88,    88,    88,    88,    88,    88,    88,    88,    88,
      88,    88,    89,    89,    90,    90,    91,    91,    91,    91,
      91,    91,    92,    92,    93,    93,    93,    94,    94,    94,
      94,    94,    94,    94,    94,    94,    94,    94,    94,    94,
      95,    95,    95,    95,    96
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     1,     2,     2,     1,     1,     0,     7,     0,
       8,     5,     4,     2,     0,     1,     1,     0,     1,     4,
       5,     2,     3,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     2,     5,     4,     1,     2,     0,     1,     0,
       0,     6,     0,     1,     1,     2,     2,     3,     2,     0,
       0,     9,     5,     0,     0,     7,     0,     0,     0,    12,
       7,     0,     1,     2,     3,     1,     3,     1,     1,     3,
       3,     3,     3,     3,     3,     3,     3,     3,     3,     3,
       3,     3,     3,     3,     3,     4,     4,     4,     4,     4,
       4,     3,     0,     1,     1,     3,     1,     2,     2,     2,
       2,     2,     1,     1,     1,     4,     4,     1,     3,     3,
       3,     3,     3,     3,     3,     3,     3,     3,     4,     3,
       1,     2,     2,     2,     1
};


#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)
#define YYEMPTY         (-2)
#define YYEOF           0

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                  \
do                                                              \
  if (yychar == YYEMPTY)                                        \
    {                                                           \
      yychar = (Token);                                         \
      yylval = (Value);                                         \
      YYPOPSTACK (yylen);                                       \
      yystate = *yyssp;                                         \
      goto yybackup;                                            \
    }                                                           \
  else                                                          \
    {                                                           \
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;                                                  \
    }                                                           \
while (0)

/* Error token number */
#define YYTERROR        1
#define YYERRCODE       256



/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)

/* This macro is provided for backward compatibility. */
#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Type, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*----------------------------------------.
| Print this symbol's value on YYOUTPUT.  |
`----------------------------------------*/

static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  FILE *yyo = yyoutput;
  YYUSE (yyo);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# endif
  YYUSE (yytype);
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyoutput, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yytype_int16 *yyssp, YYSTYPE *yyvsp, int yyrule)
{
  unsigned long int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[yyssp[yyi + 1 - yynrhs]],
                       &(yyvsp[(yyi + 1) - (yynrhs)])
                                              );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
static YYSIZE_T
yystrlen (const char *yystr)
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            /* Fall through.  */
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
                yytype_int16 *yyssp, int yytoken)
{
  YYSIZE_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
  YYSIZE_T yysize = yysize0;
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat. */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Number of reported tokens (one for the "unexpected", one per
     "expected"). */
  int yycount = 0;

  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[*yyssp];
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYSIZE_T yysize1 = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
                  if (! (yysize <= yysize1
                         && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
                    return 2;
                  yysize = yysize1;
                }
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  {
    YYSIZE_T yysize1 = yysize + yystrlen (yyformat);
    if (! (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
      return 2;
    yysize = yysize1;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          yyp++;
          yyformat++;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}




/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       'yyss': related to states.
       'yyvs': related to semantic values.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yytype_int16 yyssa[YYINITDEPTH];
    yytype_int16 *yyss;
    yytype_int16 *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken = 0;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yyssp = yyss = yyssa;
  yyvsp = yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */
  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        YYSTYPE *yyvs1 = yyvs;
        yytype_int16 *yyss1 = yyss;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * sizeof (*yyssp),
                    &yyvs1, yysize * sizeof (*yyvsp),
                    &yystacksize);

        yyss = yyss1;
        yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yytype_int16 *yyss1 = yyss;
        union yyalloc *yyptr =
          (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
                  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token.  */
  yychar = YYEMPTY;

  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 4:
#line 125 "cmm.y" /* yacc.c:1646  */
    {
  YYACCEPT;
}
#line 1587 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 7:
#line 136 "cmm.y" /* yacc.c:1646  */
    {
  symbol_push_scope();
  BuildFunction((yyvsp[-4].type),(yyvsp[-3].id),(yyvsp[-1].plist));
}
#line 1596 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 8:
#line 141 "cmm.y" /* yacc.c:1646  */
    {
  symbol_pop_scope();
}
#line 1604 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 9:
#line 147 "cmm.y" /* yacc.c:1646  */
    {
  symbol_push_scope();
  BuildFunction(PointerType::get((yyvsp[-5].type),0),(yyvsp[-3].id),(yyvsp[-1].plist));
}
#line 1613 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 10:
#line 152 "cmm.y" /* yacc.c:1646  */
    {
  symbol_pop_scope();
}
#line 1621 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 11:
#line 158 "cmm.y" /* yacc.c:1646  */
    {
  // Check to make sure global isn't already allocated
  // new GlobalVariable(...)
}
#line 1630 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 12:
#line 163 "cmm.y" /* yacc.c:1646  */
    {
  // Check to make sure global isn't already allocated
  // new GlobalVariable(...)
}
#line 1639 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 13:
#line 170 "cmm.y" /* yacc.c:1646  */
    { (yyval.value) = nullptr; }
#line 1645 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 14:
#line 170 "cmm.y" /* yacc.c:1646  */
    { (yyval.value) = nullptr; }
#line 1651 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 15:
#line 174 "cmm.y" /* yacc.c:1646  */
    {
  (yyval.type) = Type::getInt64Ty(TheContext);
}
#line 1659 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 16:
#line 178 "cmm.y" /* yacc.c:1646  */
    {
  (yyval.type) = Type::getVoidTy(TheContext);
}
#line 1667 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 17:
#line 185 "cmm.y" /* yacc.c:1646  */
    {
  (yyval.plist) = nullptr;
}
#line 1675 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 18:
#line 189 "cmm.y" /* yacc.c:1646  */
    {
  (yyval.plist) = (yyvsp[0].plist);
}
#line 1683 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 19:
#line 197 "cmm.y" /* yacc.c:1646  */
    {
  (yyval.plist) = (yyvsp[-3].plist);
  (yyval.plist)->push_back( parameter((yyvsp[-1].type),(yyvsp[0].id)) );
}
#line 1692 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 20:
#line 202 "cmm.y" /* yacc.c:1646  */
    {
  (yyval.plist) = (yyvsp[-4].plist);
  (yyval.plist)->push_back( parameter(PointerType::get((yyvsp[-2].type),0),(yyvsp[0].id)) );
}
#line 1701 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 21:
#line 207 "cmm.y" /* yacc.c:1646  */
    {
  (yyval.plist) = new parameter_list;
  (yyval.plist)->push_back( parameter((yyvsp[-1].type),(yyvsp[0].id)) );
}
#line 1710 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 22:
#line 212 "cmm.y" /* yacc.c:1646  */
    {
  (yyval.plist) = new parameter_list;
  (yyval.plist)->push_back( parameter(PointerType::get((yyvsp[-2].type),0),(yyvsp[0].id)) );
}
#line 1719 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 33:
#line 234 "cmm.y" /* yacc.c:1646  */
    {
  Value * ai = Builder->CreateAlloca(PointerType::get((yyvsp[-4].type),0),0,(yyvsp[-2].id));
  if (nullptr != (yyvsp[-1].value))
    Builder->CreateStore((yyvsp[-1].value),ai);
  symbol_insert((yyvsp[-2].id),ai);
}
#line 1730 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 34:
#line 241 "cmm.y" /* yacc.c:1646  */
    {
  Value * ai = Builder->CreateAlloca((yyvsp[-3].type),0,(yyvsp[-2].id));
  if (nullptr != (yyvsp[-1].value))
    Builder->CreateStore((yyvsp[-1].value),ai);
  symbol_insert((yyvsp[-2].id),ai);
}
#line 1741 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 39:
#line 257 "cmm.y" /* yacc.c:1646  */
    {
  // PUSH SCOPE TO RECORD VARIABLES WITHIN COMPOUND STATEMENT
  symbol_push_scope();
}
#line 1750 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 40:
#line 263 "cmm.y" /* yacc.c:1646  */
    {
  // POP SCOPE TO REMOVE VARIABLES NO LONGER ACCESSIBLE
  symbol_pop_scope();
}
#line 1759 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 49:
#line 290 "cmm.y" /* yacc.c:1646  */
    {
    BasicBlock *bbthen = BasicBlock::Create(TheContext,"if.then",Fun);
    BasicBlock *bbelse = BasicBlock::Create(TheContext,"if.else",Fun);
    BasicBlock *bbjoin = BasicBlock::Create(TheContext,"if.join",Fun);
    push_loop(nullptr,bbthen,bbelse,bbjoin);
    Builder->CreateCondBr((yyvsp[0].value), bbthen,bbelse);
    Builder->SetInsertPoint(bbthen);


    /*BasicBlock *if_then = BasicBlock::Create(TheContext,"if_then",Fun);
    BasicBlock *if_else = BasicBlock::Create(TheContext,"if_else",Fun);
    Builder->CreateCondBr($3,if_then,if_else);
    Builder->SetInsertPoint(if_then);
    $<bb>$ = if_else;
    */
  }
#line 1780 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 50:
#line 307 "cmm.y" /* yacc.c:1646  */
    {
    loop_info_t info = get_loop();
    Builder->CreateBr(info.exit);
    Builder->SetInsertPoint(info.reinit);


    /*BasicBlock* if_else = $<bb>4;
    BasicBlock* if_join = BasicBlock::Create(TheContext,"if_join",Fun);
    Builder->CreateBr(if_join);
    Builder->SetInsertPoint(if_else);
    $<bb>$ = if_join;
    */
  }
#line 1798 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 51:
#line 321 "cmm.y" /* yacc.c:1646  */
    {
    loop_info_t info = get_loop();
    Builder->CreateBr(info.exit);
    Builder->SetInsertPoint(info.exit);
    pop_loop();


    /*BasicBlock* join = $<bb>7;
    Builder->CreateBr(join);
    Builder->SetInsertPoint(join);
    */
  }
#line 1815 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 53:
#line 340 "cmm.y" /* yacc.c:1646  */
    {
    BasicBlock *bbexpr = BasicBlock::Create(TheContext,"while.expr",Fun);
    BasicBlock *bbbody = BasicBlock::Create(TheContext,"while.body",Fun);
    BasicBlock *bbexit = BasicBlock::Create(TheContext,"while.exit",Fun);
    push_loop(bbexpr,bbbody,nullptr,bbexit);
    Builder->CreateBr(bbexpr);
    Builder->SetInsertPoint(bbexpr);
  }
#line 1828 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 54:
#line 349 "cmm.y" /* yacc.c:1646  */
    {
    loop_info_t info = get_loop();
    Builder->CreateCondBr((yyvsp[0].value),info.body,info.exit);
    Builder->SetInsertPoint(info.body);
  }
#line 1838 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 55:
#line 355 "cmm.y" /* yacc.c:1646  */
    {
    loop_info_t info = get_loop();
    Builder->CreateBr(info.expr);
    Builder->SetInsertPoint(info.exit);
    pop_loop();
  }
#line 1849 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 56:
#line 362 "cmm.y" /* yacc.c:1646  */
    {
    BasicBlock *bbexpr = BasicBlock::Create(M->getContext(),"for.expr",Fun);
    BasicBlock *bbbody = BasicBlock::Create(M->getContext(),"for.body",Fun);
    BasicBlock *bbreinit = BasicBlock::Create(M->getContext(),"for.reinit",Fun);
    BasicBlock *bbexit = BasicBlock::Create(M->getContext(),"for.exit",Fun);
    push_loop(bbexpr,bbbody,bbreinit,bbexit);
    Builder->CreateBr(bbexpr);
    Builder->SetInsertPoint(bbexpr);
  }
#line 1863 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 57:
#line 372 "cmm.y" /* yacc.c:1646  */
    {
    loop_info_t info = get_loop();
    Builder->CreateCondBr((yyvsp[-1].value),info.body,info.exit);
    Builder->SetInsertPoint(info.reinit);
  }
#line 1873 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 58:
#line 378 "cmm.y" /* yacc.c:1646  */
    {
    loop_info_t info = get_loop();
    Builder->CreateBr(info.expr);
    Builder->SetInsertPoint(info.body);
  }
#line 1883 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 59:
#line 384 "cmm.y" /* yacc.c:1646  */
    {
    loop_info_t info = get_loop();
    Builder->CreateBr(info.reinit);
    Builder->SetInsertPoint(info.exit);
    pop_loop();
  }
#line 1894 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 63:
#line 398 "cmm.y" /* yacc.c:1646  */
    {
			    Builder->CreateRetVoid();

			  }
#line 1903 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 64:
#line 403 "cmm.y" /* yacc.c:1646  */
    {
			    Builder->CreateRet((yyvsp[-1].value));
			  }
#line 1911 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 65:
#line 409 "cmm.y" /* yacc.c:1646  */
    {
  if((yyvsp[0].value)->getType() == Builder->getInt64Ty())
  {
    (yyval.value) = Builder->CreateICmpNE((yyvsp[0].value),Builder->getInt64(0));
  }
  else (yyval.value) = (yyvsp[0].value);
  //$$ = $1;
}
#line 1924 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 66:
#line 421 "cmm.y" /* yacc.c:1646  */
    {
    User * val = (User*) (yyvsp[-2].value);
    Builder->CreateStore((yyvsp[0].value),val->getOperand(0));
  }
#line 1933 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 68:
#line 429 "cmm.y" /* yacc.c:1646  */
    {(yyval.value) = (yyvsp[0].value);}
#line 1939 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 71:
#line 433 "cmm.y" /* yacc.c:1646  */
    {
    (yyval.value) = Builder->CreateAnd((yyvsp[-2].value), (yyvsp[0].value));
  }
#line 1947 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 72:
#line 437 "cmm.y" /* yacc.c:1646  */
    {
    (yyval.value) = Builder->CreateICmpEQ((yyvsp[-2].value),(yyvsp[0].value));
  }
#line 1955 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 74:
#line 442 "cmm.y" /* yacc.c:1646  */
    {
    (yyval.value) = Builder->CreateICmpSLT((yyvsp[-2].value), (yyvsp[0].value));

  }
#line 1964 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 75:
#line 447 "cmm.y" /* yacc.c:1646  */
    {
    (yyval.value) = Builder->CreateICmpSGT((yyvsp[-2].value), (yyvsp[0].value));
  }
#line 1972 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 76:
#line 451 "cmm.y" /* yacc.c:1646  */
    {
  (yyval.value) = Builder->CreateICmpSLE((yyvsp[-2].value), (yyvsp[0].value));
}
#line 1980 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 77:
#line 455 "cmm.y" /* yacc.c:1646  */
    {
    (yyval.value)= Builder->CreateICmpSGE((yyvsp[-2].value), (yyvsp[0].value));
  }
#line 1988 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 80:
#line 461 "cmm.y" /* yacc.c:1646  */
    {
    (yyval.value) = Builder->CreateAdd((yyvsp[-2].value), (yyvsp[0].value));
  }
#line 1996 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 81:
#line 465 "cmm.y" /* yacc.c:1646  */
    {
    (yyval.value) = Builder->CreateSub((yyvsp[-2].value), (yyvsp[0].value));
  }
#line 2004 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 82:
#line 469 "cmm.y" /* yacc.c:1646  */
    {
    (yyval.value) = Builder->CreateMul((yyvsp[-2].value), (yyvsp[0].value));
  }
#line 2012 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 83:
#line 472 "cmm.y" /* yacc.c:1646  */
    {(yyval.value) = Builder->CreateSDiv((yyvsp[-2].value), (yyvsp[0].value));}
#line 2018 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 84:
#line 473 "cmm.y" /* yacc.c:1646  */
    {(yyval.value) = Builder->CreateSRem((yyvsp[-2].value),(yyvsp[0].value));}
#line 2024 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 91:
#line 481 "cmm.y" /* yacc.c:1646  */
    {
    (yyval.value) = (yyvsp[-1].value);
  }
#line 2032 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 96:
#line 496 "cmm.y" /* yacc.c:1646  */
    {(yyval.value) = (yyvsp[0].value);}
#line 2038 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 99:
#line 499 "cmm.y" /* yacc.c:1646  */
    {(yyval.value) = Builder->CreateNeg((yyvsp[0].value));}
#line 2044 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 100:
#line 500 "cmm.y" /* yacc.c:1646  */
    {(yyval.value) = (yyvsp[0].value);}
#line 2050 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 102:
#line 506 "cmm.y" /* yacc.c:1646  */
    {
    (yyval.value) = (yyvsp[0].value);
  }
#line 2058 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 104:
#line 514 "cmm.y" /* yacc.c:1646  */
    {
    //Pop from parameter_list, may have to add support to check for param list
    //param_list = list of <type*,char*>
    //vname holds param IDs, v holds param types taken from param_list
    //symbol list used to access predefined variables in memory
    Value * ptr = Builder->CreateGEP(symbol_find((yyvsp[0].id)),Builder->getInt64(0));
    (yyval.value) = Builder->CreateLoad(ptr);
    //$$ = symbol_find($1);

  }
#line 2073 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 107:
#line 529 "cmm.y" /* yacc.c:1646  */
    {(yyval.value) = (yyvsp[0].value);}
#line 2079 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 113:
#line 536 "cmm.y" /* yacc.c:1646  */
    {
  (yyval.value) = Builder->CreateAdd((yyvsp[-2].value), (yyvsp[0].value));
}
#line 2087 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 114:
#line 540 "cmm.y" /* yacc.c:1646  */
    {
  (yyval.value) = Builder->CreateSub((yyvsp[-2].value), (yyvsp[0].value));
}
#line 2095 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 115:
#line 544 "cmm.y" /* yacc.c:1646  */
    {
    (yyval.value) = Builder->CreateMul((yyvsp[-2].value), (yyvsp[0].value));
  }
#line 2103 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 116:
#line 548 "cmm.y" /* yacc.c:1646  */
    {
    (yyval.value) = Builder->CreateSDiv((yyvsp[-2].value), (yyvsp[0].value));
  }
#line 2111 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 119:
#line 554 "cmm.y" /* yacc.c:1646  */
    {
    (yyval.value) = (yyvsp[-1].value);
  }
#line 2119 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 120:
#line 560 "cmm.y" /* yacc.c:1646  */
    {(yyval.value) = (yyvsp[0].value);}
#line 2125 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 121:
#line 562 "cmm.y" /* yacc.c:1646  */
    {
  //assuming a negation here
  (yyval.value) = Builder->CreateNeg((yyvsp[0].value));
}
#line 2134 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 122:
#line 567 "cmm.y" /* yacc.c:1646  */
    {
  //not sure if I make it positive or just return the value
  (yyval.value) = (yyvsp[0].value);
}
#line 2143 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 123:
#line 572 "cmm.y" /* yacc.c:1646  */
    {
   Builder->CreateNot((yyvsp[0].value));
}
#line 2151 "cmm.y.cpp" /* yacc.c:1646  */
    break;

  case 124:
#line 579 "cmm.y" /* yacc.c:1646  */
    {
  (yyval.value) = Builder->getInt64((yyvsp[0].inum));
}
#line 2159 "cmm.y.cpp" /* yacc.c:1646  */
    break;


#line 2163 "cmm.y.cpp" /* yacc.c:1646  */
      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = (char *) YYSTACK_ALLOC (yymsg_alloc);
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYTERROR;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  yystos[*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  return yyresult;
}
#line 585 "cmm.y" /* yacc.c:1906  */


Value* BuildFunction(Type* RetType, const char *name,
			   parameter_list *params)
{
  std::vector<Type*> v;
  std::vector<const char*> vname;

  if (params)
    for(auto ii : *params)
      {
	vname.push_back( ii.second );
	v.push_back( ii.first );
      }

  ArrayRef<Type*> Params(v);

  FunctionType* FunType = FunctionType::get(RetType,Params,false);

  Fun = Function::Create(FunType,GlobalValue::ExternalLinkage,
			 name,M);
  Twine T("entry");
  BasicBlock *BB = BasicBlock::Create(M->getContext(),T,Fun);

  /* Create an Instruction Builder */
  Builder = new IRBuilder<>(M->getContext());
  Builder->SetInsertPoint(BB);

  Function::arg_iterator I = Fun->arg_begin();
  for(int i=0; I!=Fun->arg_end();i++, I++)
    {
      // map args and create allocas!
      AllocaInst *AI = Builder->CreateAlloca(v[i]);
      Builder->CreateStore(&(*I),(Value*)AI);
      symbol_insert(vname[i],(Value*)AI);
    }


  return Fun;
}

extern int verbose;
extern int line_num;
extern char *infile[];
static int   infile_cnt=0;
extern FILE * yyin;
extern int use_stdin;

int parser_error(const char *msg)
{
  if (use_stdin)
    printf("stdin:%d: Error -- %s\n",line_num,msg);
  else
    printf("%s:%d: Error -- %s\n",infile[infile_cnt-1],line_num,msg);
  return 1;
}

int internal_error(const char *msg)
{
  printf("%s:%d Internal Error -- %s\n",infile[infile_cnt-1],line_num,msg);
  return 1;
}

int yywrap() {

  if (use_stdin)
    {
      yyin = stdin;
      return 0;
    }

  static FILE * currentFile = NULL;

  if ( (currentFile != 0) ) {
    fclose(yyin);
  }

  if(infile[infile_cnt]==NULL)
    return 1;

  currentFile = fopen(infile[infile_cnt],"r");
  if(currentFile!=NULL)
    yyin = currentFile;
  else
    printf("Could not open file: %s",infile[infile_cnt]);

  infile_cnt++;

  return (currentFile)?0:1;
}

int yyerror(const char* error)
{
  parser_error("Un-resolved syntax error.");
  return 1;
}

char * get_filename()
{
  return infile[infile_cnt-1];
}

int get_lineno()
{
  return line_num;
}


void cmm_abort()
{
  parser_error("Too many errors to continue.");
  exit(1);
}
