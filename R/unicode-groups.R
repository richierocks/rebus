#' Unicode groups
#' 
#' Match ranges of unicode characters.
#' @param lo A non-negative integer. Minimum number of repeats, when grouped.
#' @param hi positive integer. Maximum number of repeats, when grouped.
#' @param group \code{TRUE} or \code{FALSE}. Should the class be grouped?
#' @return A character vector representing part or all of a regular expression.
#' @references \url{http://www.unicode.org/charts} 
#' @seealso \code{\link{ClassGroups}} 
#' @name Unicode
NULL

#' @rdname Unicode
#' #' @export
armenian <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ARMENIAN, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
armenian_ligatures <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ARMENIAN_LIGATURES, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
caucasian_albanian <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CAUCASIAN_ALBANIAN, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
cypriot_syllabary <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CYPRIOT_SYLLABARY, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
cyrillic <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CYRILLIC, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
cyrillic_supplement <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CYRILLIC_SUPPLEMENT, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
cyrillic_extended_a <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CYRILLIC_EXTENDED_A, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
cyrillic_extended_b <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CYRILLIC_EXTENDED_B, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
elbasan <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ELBASAN, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
georgian <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(GEORGIAN, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
georgian_supplement <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(GEORGIAN_SUPPLEMENT, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
glagolitic <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(GLAGOLITIC, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
gothic <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(GOTHIC, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
greek_and_coptic <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(GREEK_AND_COPTIC, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
greek_extended <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(GREEK_EXTENDED, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
latin <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(LATIN, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
latin_1_supplement <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(LATIN_1_SUPPLEMENT, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
latin_extended_a <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(LATIN_EXTENDED_A, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
latin_extended_b <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(LATIN_EXTENDED_B, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
latin_extended_c <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(LATIN_EXTENDED_C, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
latin_extended_d <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(LATIN_EXTENDED_D, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
latin_extended_e <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(LATIN_EXTENDED_E, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
latin_extended_additional <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(LATIN_EXTENDED_ADDITIONAL, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
latin_ligatures <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(LATIN_LIGATURES, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
linear_a <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(LINEAR_A, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
linear_b_syllabary <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(LINEAR_B_SYLLABARY, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
linear_b_ideograms <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(LINEAR_B_IDEOGRAMS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
ogham <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(OGHAM, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
old_italic <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(OLD_ITALIC, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
old_permic <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(OLD_PERMIC, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
phaistos_disc <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(PHAISTOS_DISC, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
runic <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(RUNIC, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
shavian <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SHAVIAN, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
duployan <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(DUPLOYAN, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
shorthand_format_controls <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SHORTHAND_FORMAT_CONTROLS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
ipa_extensions <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(IPA_EXTENSIONS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
phonetic_extensions <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(PHONETIC_EXTENSIONS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
phonetic_extensions_supplement <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(PHONETIC_EXTENSIONS_SUPPLEMENT, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
modifier_tone_letters <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(MODIFIER_TONE_LETTERS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
spacing_modifier_letters <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SPACING_MODIFIER_LETTERS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
superscripts_and_subscripts <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SUPERSCRIPTS_AND_SUBSCRIPTS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
combining_diacritic_marks <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(COMBINING_DIACRITIC_MARKS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
combining_diacritic_supplement <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(COMBINING_DIACRITIC_SUPPLEMENT, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
combining_diacritic_extended <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(COMBINING_DIACRITIC_EXTENDED, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
combining_half_marks <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(COMBINING_HALF_MARKS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
bamun <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(BAMUN, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
bamun_supplement <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(BAMUN_SUPPLEMENT, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
bassa_vah <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(BASSA_VAH, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
coptic <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(COPTIC, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
coptic_epact_numbers <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(COPTIC_EPACT_NUMBERS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
egyptian_hieroglyphs <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(EGYPTIAN_HIEROGLYPHS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
ethiopic <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ETHIOPIC, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
ethiopic_supplement <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ETHIOPIC_SUPPLEMENT, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
ethiopic_extended <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ETHIOPIC_EXTENDED, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
ethiopic_extended_a <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ETHIOPIC_EXTENDED_A, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
mende_kikakui <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(MENDE_KIKAKUI, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
meroitic_cursive <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(MEROITIC_CURSIVE, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
meroitic_hieroglyphs <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(MEROITIC_HIEROGLYPHS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
nko <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(NKO, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
osmanya <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(OSMANYA, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
tifinagh <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(TIFINAGH, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
vai <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(VAI, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
arabic <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ARABIC, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
arabic_supplement <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ARABIC_SUPPLEMENT, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
arabic_extended_a <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ARABIC_EXTENDED_A, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
arabic_presentation_forms_a <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ARABIC_PRESENTATION_FORMS_A, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
arabic_presentation_forms_b <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ARABIC_PRESENTATION_FORMS_B, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
imperial_aramaic <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(IMPERIAL_ARAMAIC, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
avestan <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(AVESTAN, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
carian <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CARIAN, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
cuneiform <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CUNEIFORM, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
cuneiform_numbers_and_punctuation <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CUNEIFORM_NUMBERS_AND_PUNCTUATION, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
old_persian <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(OLD_PERSIAN, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
ugaritic <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(UGARITIC, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
hebrew <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(HEBREW, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
lycian <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(LYCIAN, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
lydian <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(LYDIAN, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
mandaic <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(MANDAIC, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
nabataean <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(NABATAEAN, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
old_north_arabian <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(OLD_NORTH_ARABIAN, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
old_south_arabian <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(OLD_SOUTH_ARABIAN, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
pahlavi_inscriptional <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(PAHLAVI_INSCRIPTIONAL, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
pahlavi_psalter <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(PAHLAVI_PSALTER, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
palmyrene <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(PALMYRENE, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
phoenician <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(PHOENICIAN, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
samaritan <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SAMARITAN, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
syriac <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SYRIAC, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
manichaean <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(MANICHAEAN, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
mongolian <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(MONGOLIAN, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
old_turkic <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(OLD_TURKIC, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
phags_pa <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(PHAGS_PA, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
tibetan <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(TIBETAN, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
bengali_and_assamese <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(BENGALI_AND_ASSAMESE, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
brahmi <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(BRAHMI, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
chakma <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CHAKMA, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
devanagari <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(DEVANAGARI, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
devanagari_extended <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(DEVANAGARI_EXTENDED, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
grantha <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(GRANTHA, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
gujarati <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(GUJARATI, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
gurmukhi <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(GURMUKHI, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
kaithi <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(KAITHI, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
kannada <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(KANNADA, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
kharoshthi <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(KHAROSHTHI, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
khojki <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(KHOJKI, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
khudawadi <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(KHUDAWADI, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
lepcha <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(LEPCHA, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
limbu <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(LIMBU, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
mahajani <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(MAHAJANI, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
malayalam <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(MALAYALAM, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
meetei_mayek <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(MEETEI_MAYEK, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
meetei_mayek_extensions <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(MEETEI_MAYEK_EXTENSIONS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
modi <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(MODI, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
mro <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(MRO, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
ol_chiki <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(OL_CHIKI, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
oriya <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ORIYA, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
saurashtra <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SAURASHTRA, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
sharada <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SHARADA, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
siddham <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SIDDHAM, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
sinhala <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SINHALA, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
sinhala_archaic_numbers <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SINHALA_ARCHAIC_NUMBERS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
sora_sompeng <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SORA_SOMPENG, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
syloti_nagri <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SYLOTI_NAGRI, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
takri <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(TAKRI, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
tamil <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(TAMIL, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
telugu <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(TELUGU, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
thaana <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(THAANA, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
tirhuta <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(TIRHUTA, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
vedic_extensions <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(VEDIC_EXTENSIONS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
warang_citi <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(WARANG_CITI, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
cham <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CHAM, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
kayah_li <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(KAYAH_LI, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
khmer <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(KHMER, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
khmer_symbols <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(KHMER_SYMBOLS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
lao <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(LAO, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
myanmar <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(MYANMAR, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
myanmar_extended_a <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(MYANMAR_EXTENDED_A, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
myanmar_extended_b <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(MYANMAR_EXTENDED_B, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
new_tai_lue <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(NEW_TAI_LUE, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
pahawh_hmong <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(PAHAWH_HMONG, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
pau_cin_hau <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(PAU_CIN_HAU, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
tai_le <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(TAI_LE, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
tai_tham <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(TAI_THAM, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
tai_viet <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(TAI_VIET, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
thai <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(THAI, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
balinese <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(BALINESE, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
batak <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(BATAK, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
buginese <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(BUGINESE, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
buhid <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(BUHID, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
hanunoo <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(HANUNOO, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
javanese <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(JAVANESE, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
rejang <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(REJANG, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
sundanese <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SUNDANESE, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
sundanese_supplement <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SUNDANESE_SUPPLEMENT, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
tagalog <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(TAGALOG, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
tagbanwa <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(TAGBANWA, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
bopomofo <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(BOPOMOFO, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
bopomofo_extended <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(BOPOMOFO_EXTENDED, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
cjk_unified_ideographs <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CJK_UNIFIED_IDEOGRAPHS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
cjk_unified_ideographs_extension_a <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
cjk_unified_ideographs_extension_b <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
cjk_unified_ideographs_extension_c <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CJK_UNIFIED_IDEOGRAPHS_EXTENSION_C, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
cjk_unified_ideographs_extension_d <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CJK_UNIFIED_IDEOGRAPHS_EXTENSION_D, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
cjk_compatibility_ideographs <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CJK_COMPATIBILITY_IDEOGRAPHS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
cjk_compatibility_ideographs_supplement <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
kangxi_radicals <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(KANGXI_RADICALS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
kangxi_radicals_supplement <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(KANGXI_RADICALS_SUPPLEMENT, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
cjk_strokes <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CJK_STROKES, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
cjk_ideographic_description_characters <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CJK_IDEOGRAPHIC_DESCRIPTION_CHARACTERS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
hangul_jamo <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(HANGUL_JAMO, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
hangul_jamo_extended_a <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(HANGUL_JAMO_EXTENDED_A, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
hangul_jamo_extended_b <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(HANGUL_JAMO_EXTENDED_B, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
hangul_compatibility_jamo <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(HANGUL_COMPATIBILITY_JAMO, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
hangul_syllables <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(HANGUL_SYLLABLES, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
hiragana <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(HIRAGANA, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
katakana <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(KATAKANA, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
katakana_phonetic_extensions <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(KATAKANA_PHONETIC_EXTENSIONS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
kana_supplement <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(KANA_SUPPLEMENT, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
kanbun <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(KANBUN, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
lisu <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(LISU, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
miao <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(MIAO, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
yi_syllables <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(YI_SYLLABLES, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
yi_radicals <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(YI_RADICALS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
cherokee <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CHEROKEE, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
deseret <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(DESERET, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
unified_canadian_aboriginal_syllabics <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
unified_canadian_aboriginal_syllabics_extended <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS_EXTENDED, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
alphabetic_presentation_forms <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ALPHABETIC_PRESENTATION_FORMS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
halfwidth_and_fullwidth_forms <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(HALFWIDTH_AND_FULLWIDTH_FORMS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
general_punctuation <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(GENERAL_PUNCTUATION, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
latin_1_punctuation <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(LATIN_1_PUNCTUATION, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
small_form_variants <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SMALL_FORM_VARIANTS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
supplemental_punctuation <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SUPPLEMENTAL_PUNCTUATION, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
cjk_symbols_and_punctuation <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CJK_SYMBOLS_AND_PUNCTUATION, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
cjk_compatibility_forms <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CJK_COMPATIBILITY_FORMS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
fullwidth_ascii_punctuation <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(FULLWIDTH_ASCII_PUNCTUATION, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
vertical_forms <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(VERTICAL_FORMS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
letterlike_symbols <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(LETTERLIKE_SYMBOLS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
ancient_symbols <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ANCIENT_SYMBOLS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
mathematical_alphanumeric_symbols <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(MATHEMATICAL_ALPHANUMERIC_SYMBOLS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
arabic_mathematical_alphanumeric_symbols <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ARABIC_MATHEMATICAL_ALPHANUMERIC_SYMBOLS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
enclosed_alphanumerics <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ENCLOSED_ALPHANUMERICS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
enclosed_alphanumeric_supplement <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ENCLOSED_ALPHANUMERIC_SUPPLEMENT, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
enclosed_cjk_letters_and_months <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ENCLOSED_CJK_LETTERS_AND_MONTHS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
enclosed_ideographic_supplement <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ENCLOSED_IDEOGRAPHIC_SUPPLEMENT, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
cjk_compatibility <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CJK_COMPATIBILITY, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
miscellaneous_technical <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(MISCELLANEOUS_TECHNICAL, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
control_pictures <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CONTROL_PICTURES, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
optical_character_recognition <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(OPTICAL_CHARACTER_RECOGNITION, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
combining_diacritic_marks_for_symbols <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(COMBINING_DIACRITIC_MARKS_FOR_SYMBOLS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
aegean_numbers <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(AEGEAN_NUMBERS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
ancient_greek_numbers <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ANCIENT_GREEK_NUMBERS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
fullwidth_ascii_digits <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(FULLWIDTH_ASCII_DIGITS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
common_indic_number_forms <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(COMMON_INDIC_NUMBER_FORMS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
coptic_epact_numbers <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(COPTIC_EPACT_NUMBERS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
counting_rod_numerals <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(COUNTING_ROD_NUMERALS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
number_forms <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(NUMBER_FORMS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
rumi_numeral_symbols <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(RUMI_NUMERAL_SYMBOLS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
sinhala_archaic_numbers <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SINHALA_ARCHAIC_NUMBERS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
arrows <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ARROWS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
supplemental_arrows_a <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SUPPLEMENTAL_ARROWS_A, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
supplemental_arrows_a <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SUPPLEMENTAL_ARROWS_A, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
supplemental_arrows_a <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SUPPLEMENTAL_ARROWS_A, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
additional_arrows <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ADDITIONAL_ARROWS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
supplemental_mathematical_operators <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SUPPLEMENTAL_MATHEMATICAL_OPERATORS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
miscellaneous_mathematical_symbols_a <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(MISCELLANEOUS_MATHEMATICAL_SYMBOLS_A, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
miscellaneous_mathematical_symbols_b <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(MISCELLANEOUS_MATHEMATICAL_SYMBOLS_B, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
floors_and_ceilings <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(FLOORS_AND_CEILINGS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
invisible_operators <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(INVISIBLE_OPERATORS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
geometric_shapes <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(GEOMETRIC_SHAPES, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
box_drawing <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(BOX_DRAWING, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
block_elements <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(BLOCK_ELEMENTS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
geometric_shapes_extended <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(GEOMETRIC_SHAPES_EXTENDED, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
alchemical_symbols <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ALCHEMICAL_SYMBOLS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
braille_patterns <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(BRAILLE_PATTERNS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
currency_symbols <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CURRENCY_SYMBOLS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
dingbats <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(DINGBATS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
ornamental_dingbats <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ORNAMENTAL_DINGBATS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
emoticons <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(EMOTICONS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
chess_checkers_draughts <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CHESS_CHECKERS_DRAUGHTS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
domino_tiles <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(DOMINO_TILES, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
japanese_chess <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(JAPANESE_CHESS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
mahjong_tiles <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(MAHJONG_TILES, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
playing_cards <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(PLAYING_CARDS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
card_suits <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CARD_SUITS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
miscellaneous_symbols_and_pictographs <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(MISCELLANEOUS_SYMBOLS_AND_PICTOGRAPHS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
musical_symbols <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(MUSICAL_SYMBOLS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
ancient_greek_musical_notation <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ANCIENT_GREEK_MUSICAL_NOTATION, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
byzantine_musical_symbols <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(BYZANTINE_MUSICAL_SYMBOLS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
transport_and_map_symbols <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(TRANSPORT_AND_MAP_SYMBOLS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
yijing_mono_di_and_trigrams <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(YIJING_MONO_DI_AND_TRIGRAMS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
yijing_hexagram_symbols <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(YIJING_HEXAGRAM_SYMBOLS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
tai_xuan_jing_symbols <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(TAI_XUAN_JING_SYMBOLS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
specials <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SPECIALS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
tags <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(TAGS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
variation_selectors <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(VARIATION_SELECTORS, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
variation_selectors_supplement <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(VARIATION_SELECTORS_SUPPLEMENT, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
private_use_area <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(PRIVATE_USE_AREA, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
supplementary_private_use_area_a <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SUPPLEMENTARY_PRIVATE_USE_AREA_A, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
supplementary_private_use_area_b <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SUPPLEMENTARY_PRIVATE_USE_AREA_B, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
high_surrogates <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(HIGH_SURROGATES, lo, hi, group)
}

#' @rdname Unicode
#' #' @export
low_surrogates <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(LOW_SURROGATES, lo, hi, group)
}
