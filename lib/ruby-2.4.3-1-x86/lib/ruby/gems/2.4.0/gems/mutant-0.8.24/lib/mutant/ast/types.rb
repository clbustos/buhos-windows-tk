# frozen_string_literal: true

module Mutant
  module AST
    # Groups of node types
    #
    # :reek:TooManyConstants
    # rubocop:disable Metrics/ModuleLength
    module Types
      ASSIGNABLE_VARIABLES = Set.new(%i[ivasgn lvasgn cvasgn gvasgn]).freeze

      INDEX_ASSIGN_OPERATOR = :[]=

      # Set of nodes that cannot be on the LHS of an assignment
      NOT_ASSIGNABLE         = Set.new(%i[int float str dstr class module self nil]).freeze

      # Set of op-assign types
      OP_ASSIGN              = Set.new(%i[or_asgn and_asgn op_asgn]).freeze
      # Set of node types that are not valid when emitted standalone
      NOT_STANDALONE         = Set.new(%i[splat restarg block_pass]).freeze
      INDEX_OPERATORS        = Set.new(%i[[] []=]).freeze
      UNARY_METHOD_OPERATORS = Set.new(%i[~@ +@ -@ !]).freeze

      # Operators ruby implements as methods
      METHOD_OPERATORS = Set.new(%i[
        !
        !=
        !~
        %
        &
        *
        **
        +
        +@
        -
        -@
        /
        <
        <<
        <=
        <=>
        ==
        ===
        =~
        >
        >=
        >>
        []
        []=
        ^
        |
        ~@
      ]).freeze

      BINARY_METHOD_OPERATORS = Set.new(
        METHOD_OPERATORS - (INDEX_OPERATORS + UNARY_METHOD_OPERATORS)
      )

      OPERATOR_METHODS = Set.new(
        METHOD_OPERATORS + INDEX_OPERATORS + UNARY_METHOD_OPERATORS
      ).freeze

      # Nodes that are NOT handled by mutant.
      #
      # not - 1.8 only, mutant does not support 1.8
      #
      BLACKLIST = Set.new(%i[not]).freeze

      # Nodes generated by regular expression body parsing
      REGEXP = Set.new(%i[
        regexp_alnum_posixclass
        regexp_alpha_posixclass
        regexp_alpha_property
        regexp_alternation_escape
        regexp_alternation_meta
        regexp_arabic_property
        regexp_ascii_posixclass
        regexp_atomic_group
        regexp_backslash_escape
        regexp_backspace_escape
        regexp_bell_escape
        regexp_blank_posixclass
        regexp_bol_anchor
        regexp_bol_escape
        regexp_bos_anchor
        regexp_capture_group
        regexp_carriage_escape
        regexp_character_set
        regexp_cntrl_posixclass
        regexp_codepoint_escape
        regexp_codepoint_list_escape
        regexp_comment_free_space
        regexp_comment_group
        regexp_condition_conditional
        regexp_control_escape
        regexp_digit_posixclass
        regexp_digit_type
        regexp_dot_escape
        regexp_dot_meta
        regexp_eol_anchor
        regexp_eol_escape
        regexp_eos_anchor
        regexp_eos_ob_eol_anchor
        regexp_escape_escape
        regexp_form_feed_escape
        regexp_graph_posixclass
        regexp_greedy_interval
        regexp_greedy_one_or_more
        regexp_greedy_zero_or_more
        regexp_greedy_zero_or_one
        regexp_group_close_escape
        regexp_group_open_escape
        regexp_han_property
        regexp_hangul_property
        regexp_hex_escape
        regexp_hex_type
        regexp_hiragana_property
        regexp_intersection_set
        regexp_interval_close_escape
        regexp_interval_open_escape
        regexp_katakana_property
        regexp_letter_property
        regexp_linebreak_type
        regexp_literal_escape
        regexp_literal_literal
        regexp_lookahead_assertion
        regexp_lookbehind_assertion
        regexp_lower_posixclass
        regexp_mark_keep
        regexp_match_start_anchor
        regexp_meta_sequence_escape
        regexp_name_call_backref
        regexp_named_group
        regexp_newline_escape
        regexp_nlookahead_assertion
        regexp_nlookbehind_assertion
        regexp_nondigit_type
        regexp_nonhex_type
        regexp_nonspace_type
        regexp_nonword_boundary_anchor
        regexp_nonword_type
        regexp_number_backref
        regexp_octal_escape
        regexp_one_or_more_escape
        regexp_open_conditional
        regexp_options_group
        regexp_options_switch_group
        regexp_passive_group
        regexp_possessive_interval
        regexp_possessive_one_or_more
        regexp_possessive_zero_or_more
        regexp_possessive_zero_or_one
        regexp_print_nonposixclass
        regexp_print_nonproperty
        regexp_print_posixclass
        regexp_print_posixclass
        regexp_print_property
        regexp_punct_posixclass
        regexp_range_set
        regexp_reluctant_interval
        regexp_reluctant_one_or_more
        regexp_reluctant_zero_or_more
        regexp_root_expression
        regexp_sequence_expression
        regexp_set_close_escape
        regexp_set_open_escape
        regexp_space_posixclass
        regexp_space_type
        regexp_tab_escape
        regexp_upper_posixclass
        regexp_vertical_tab_escape
        regexp_whitespace_free_space
        regexp_word_boundary_anchor
        regexp_word_posixclass
        regexp_word_type
        regexp_xdigit_posixclass
        regexp_xgrapheme_type
        regexp_zero_or_more_escape
        regexp_zero_or_one_escape
      ]).freeze

      # Nodes that are NOT generated by parser but used by mutant / unparser.
      GENERATED = Set.new(%i[empty]).freeze

      # Nodes missing from parser metadata
      MISSING = Set.new(%i[index indexasgn lambda procarg0]).freeze

      ALL = Set.new(
        (Parser::Meta::NODE_TYPES + GENERATED + REGEXP + MISSING) - BLACKLIST
      ).freeze
    end # Types
  end # AST
end # Mutant
