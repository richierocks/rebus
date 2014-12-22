#' Unicode groups
#' 
#' Match ranges of unicode characters.
#' @param lo A non-negative integer. Minimum number of repeats, when grouped.
#' @param hi positive integer. Maximum number of repeats, when grouped.
#' @param char_class \code{TRUE} or \code{FALSE}. Should the values be wrapped
#' into a character class?
#' @return A character vector representing part or all of a regular expression.
#' @references \url{http://www.unicode.org/charts} 
#' @seealso \code{\link{ClassGroups}} 
#' @name Unicode
NULL

#' @rdname Unicode
#' @export
armenian <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ARMENIAN, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
armenian_ligatures <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ARMENIAN_LIGATURES, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
caucasian_albanian <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CAUCASIAN_ALBANIAN, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
cypriot_syllabary <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CYPRIOT_SYLLABARY, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
cyrillic <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CYRILLIC, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
cyrillic_supplement <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CYRILLIC_SUPPLEMENT, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
cyrillic_extended_a <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CYRILLIC_EXTENDED_A, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
cyrillic_extended_b <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CYRILLIC_EXTENDED_B, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
elbasan <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ELBASAN, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
georgian <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(GEORGIAN, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
georgian_supplement <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(GEORGIAN_SUPPLEMENT, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
glagolitic <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(GLAGOLITIC, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
gothic <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(GOTHIC, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
greek_and_coptic <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(GREEK_AND_COPTIC, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
greek_extended <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(GREEK_EXTENDED, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
latin <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(LATIN, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
latin_1_supplement <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(LATIN_1_SUPPLEMENT, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
latin_extended_a <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(LATIN_EXTENDED_A, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
latin_extended_b <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(LATIN_EXTENDED_B, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
latin_extended_c <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(LATIN_EXTENDED_C, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
latin_extended_d <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(LATIN_EXTENDED_D, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
latin_extended_e <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(LATIN_EXTENDED_E, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
latin_extended_additional <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(LATIN_EXTENDED_ADDITIONAL, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
latin_ligatures <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(LATIN_LIGATURES, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
linear_a <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(LINEAR_A, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
linear_b_syllabary <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(LINEAR_B_SYLLABARY, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
linear_b_ideograms <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(LINEAR_B_IDEOGRAMS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
ogham <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(OGHAM, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
old_italic <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(OLD_ITALIC, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
old_permic <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(OLD_PERMIC, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
phaistos_disc <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(PHAISTOS_DISC, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
runic <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(RUNIC, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
shavian <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SHAVIAN, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
duployan <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(DUPLOYAN, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
shorthand_format_controls <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SHORTHAND_FORMAT_CONTROLS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
ipa_extensions <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(IPA_EXTENSIONS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
phonetic_extensions <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(PHONETIC_EXTENSIONS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
phonetic_extensions_supplement <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(PHONETIC_EXTENSIONS_SUPPLEMENT, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
modifier_tone_letters <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(MODIFIER_TONE_LETTERS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
spacing_modifier_letters <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SPACING_MODIFIER_LETTERS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
superscripts_and_subscripts <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SUPERSCRIPTS_AND_SUBSCRIPTS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
combining_diacritic_marks <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(COMBINING_DIACRITIC_MARKS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
combining_diacritic_supplement <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(COMBINING_DIACRITIC_SUPPLEMENT, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
combining_diacritic_extended <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(COMBINING_DIACRITIC_EXTENDED, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
combining_half_marks <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(COMBINING_HALF_MARKS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
bamun <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(BAMUN, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
bamun_supplement <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(BAMUN_SUPPLEMENT, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
bassa_vah <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(BASSA_VAH, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
coptic <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(COPTIC, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
coptic_epact_numbers <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(COPTIC_EPACT_NUMBERS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
egyptian_hieroglyphs <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(EGYPTIAN_HIEROGLYPHS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
ethiopic <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ETHIOPIC, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
ethiopic_supplement <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ETHIOPIC_SUPPLEMENT, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
ethiopic_extended <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ETHIOPIC_EXTENDED, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
ethiopic_extended_a <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ETHIOPIC_EXTENDED_A, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
mende_kikakui <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(MENDE_KIKAKUI, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
meroitic_cursive <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(MEROITIC_CURSIVE, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
meroitic_hieroglyphs <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(MEROITIC_HIEROGLYPHS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
nko <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(NKO, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
osmanya <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(OSMANYA, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
tifinagh <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(TIFINAGH, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
vai <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(VAI, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
arabic <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ARABIC, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
arabic_supplement <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ARABIC_SUPPLEMENT, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
arabic_extended_a <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ARABIC_EXTENDED_A, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
arabic_presentation_forms_a <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ARABIC_PRESENTATION_FORMS_A, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
arabic_presentation_forms_b <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ARABIC_PRESENTATION_FORMS_B, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
imperial_aramaic <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(IMPERIAL_ARAMAIC, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
avestan <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(AVESTAN, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
carian <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CARIAN, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
cuneiform <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CUNEIFORM, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
cuneiform_numbers_and_punctuation <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CUNEIFORM_NUMBERS_AND_PUNCTUATION, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
old_persian <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(OLD_PERSIAN, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
ugaritic <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(UGARITIC, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
hebrew <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(HEBREW, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
lycian <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(LYCIAN, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
lydian <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(LYDIAN, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
mandaic <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(MANDAIC, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
nabataean <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(NABATAEAN, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
old_north_arabian <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(OLD_NORTH_ARABIAN, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
old_south_arabian <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(OLD_SOUTH_ARABIAN, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
pahlavi_inscriptional <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(PAHLAVI_INSCRIPTIONAL, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
pahlavi_psalter <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(PAHLAVI_PSALTER, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
palmyrene <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(PALMYRENE, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
phoenician <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(PHOENICIAN, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
samaritan <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SAMARITAN, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
syriac <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SYRIAC, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
manichaean <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(MANICHAEAN, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
mongolian <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(MONGOLIAN, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
old_turkic <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(OLD_TURKIC, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
phags_pa <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(PHAGS_PA, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
tibetan <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(TIBETAN, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
bengali_and_assamese <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(BENGALI_AND_ASSAMESE, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
brahmi <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(BRAHMI, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
chakma <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CHAKMA, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
devanagari <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(DEVANAGARI, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
devanagari_extended <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(DEVANAGARI_EXTENDED, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
grantha <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(GRANTHA, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
gujarati <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(GUJARATI, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
gurmukhi <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(GURMUKHI, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
kaithi <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(KAITHI, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
kannada <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(KANNADA, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
kharoshthi <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(KHAROSHTHI, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
khojki <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(KHOJKI, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
khudawadi <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(KHUDAWADI, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
lepcha <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(LEPCHA, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
limbu <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(LIMBU, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
mahajani <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(MAHAJANI, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
malayalam <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(MALAYALAM, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
meetei_mayek <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(MEETEI_MAYEK, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
meetei_mayek_extensions <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(MEETEI_MAYEK_EXTENSIONS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
modi <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(MODI, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
mro <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(MRO, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
ol_chiki <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(OL_CHIKI, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
oriya <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ORIYA, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
saurashtra <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SAURASHTRA, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
sharada <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SHARADA, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
siddham <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SIDDHAM, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
sinhala <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SINHALA, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
sinhala_archaic_numbers <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SINHALA_ARCHAIC_NUMBERS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
sora_sompeng <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SORA_SOMPENG, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
syloti_nagri <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SYLOTI_NAGRI, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
takri <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(TAKRI, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
tamil <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(TAMIL, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
telugu <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(TELUGU, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
thaana <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(THAANA, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
tirhuta <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(TIRHUTA, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
vedic_extensions <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(VEDIC_EXTENSIONS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
warang_citi <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(WARANG_CITI, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
cham <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CHAM, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
kayah_li <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(KAYAH_LI, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
khmer <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(KHMER, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
khmer_symbols <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(KHMER_SYMBOLS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
lao <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(LAO, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
myanmar <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(MYANMAR, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
myanmar_extended_a <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(MYANMAR_EXTENDED_A, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
myanmar_extended_b <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(MYANMAR_EXTENDED_B, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
new_tai_lue <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(NEW_TAI_LUE, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
pahawh_hmong <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(PAHAWH_HMONG, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
pau_cin_hau <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(PAU_CIN_HAU, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
tai_le <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(TAI_LE, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
tai_tham <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(TAI_THAM, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
tai_viet <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(TAI_VIET, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
thai <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(THAI, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
balinese <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(BALINESE, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
batak <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(BATAK, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
buginese <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(BUGINESE, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
buhid <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(BUHID, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
hanunoo <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(HANUNOO, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
javanese <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(JAVANESE, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
rejang <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(REJANG, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
sundanese <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SUNDANESE, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
sundanese_supplement <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SUNDANESE_SUPPLEMENT, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
tagalog <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(TAGALOG, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
tagbanwa <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(TAGBANWA, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
bopomofo <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(BOPOMOFO, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
bopomofo_extended <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(BOPOMOFO_EXTENDED, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
cjk_unified_ideographs <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CJK_UNIFIED_IDEOGRAPHS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
cjk_unified_ideographs_extension_a <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
cjk_unified_ideographs_extension_b <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
cjk_unified_ideographs_extension_c <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CJK_UNIFIED_IDEOGRAPHS_EXTENSION_C, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
cjk_unified_ideographs_extension_d <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CJK_UNIFIED_IDEOGRAPHS_EXTENSION_D, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
cjk_compatibility_ideographs <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CJK_COMPATIBILITY_IDEOGRAPHS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
cjk_compatibility_ideographs_supplement <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
kangxi_radicals <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(KANGXI_RADICALS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
kangxi_radicals_supplement <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(KANGXI_RADICALS_SUPPLEMENT, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
cjk_strokes <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CJK_STROKES, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
cjk_ideographic_description_characters <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CJK_IDEOGRAPHIC_DESCRIPTION_CHARACTERS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
hangul_jamo <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(HANGUL_JAMO, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
hangul_jamo_extended_a <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(HANGUL_JAMO_EXTENDED_A, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
hangul_jamo_extended_b <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(HANGUL_JAMO_EXTENDED_B, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
hangul_compatibility_jamo <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(HANGUL_COMPATIBILITY_JAMO, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
hangul_syllables <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(HANGUL_SYLLABLES, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
hiragana <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(HIRAGANA, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
katakana <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(KATAKANA, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
katakana_phonetic_extensions <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(KATAKANA_PHONETIC_EXTENSIONS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
kana_supplement <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(KANA_SUPPLEMENT, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
kanbun <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(KANBUN, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
lisu <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(LISU, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
miao <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(MIAO, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
yi_syllables <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(YI_SYLLABLES, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
yi_radicals <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(YI_RADICALS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
cherokee <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CHEROKEE, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
deseret <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(DESERET, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
unified_canadian_aboriginal_syllabics <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
unified_canadian_aboriginal_syllabics_extended <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS_EXTENDED, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
alphabetic_presentation_forms <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ALPHABETIC_PRESENTATION_FORMS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
halfwidth_and_fullwidth_forms <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(HALFWIDTH_AND_FULLWIDTH_FORMS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
general_punctuation <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(GENERAL_PUNCTUATION, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
latin_1_punctuation <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(LATIN_1_PUNCTUATION, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
small_form_variants <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SMALL_FORM_VARIANTS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
supplemental_punctuation <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SUPPLEMENTAL_PUNCTUATION, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
cjk_symbols_and_punctuation <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CJK_SYMBOLS_AND_PUNCTUATION, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
cjk_compatibility_forms <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CJK_COMPATIBILITY_FORMS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
fullwidth_ascii_punctuation <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(FULLWIDTH_ASCII_PUNCTUATION, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
vertical_forms <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(VERTICAL_FORMS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
letterlike_symbols <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(LETTERLIKE_SYMBOLS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
ancient_symbols <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ANCIENT_SYMBOLS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
mathematical_alphanumeric_symbols <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(MATHEMATICAL_ALPHANUMERIC_SYMBOLS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
arabic_mathematical_alphanumeric_symbols <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ARABIC_MATHEMATICAL_ALPHANUMERIC_SYMBOLS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
enclosed_alphanumerics <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ENCLOSED_ALPHANUMERICS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
enclosed_alphanumeric_supplement <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ENCLOSED_ALPHANUMERIC_SUPPLEMENT, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
enclosed_cjk_letters_and_months <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ENCLOSED_CJK_LETTERS_AND_MONTHS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
enclosed_ideographic_supplement <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ENCLOSED_IDEOGRAPHIC_SUPPLEMENT, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
cjk_compatibility <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CJK_COMPATIBILITY, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
miscellaneous_technical <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(MISCELLANEOUS_TECHNICAL, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
control_pictures <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CONTROL_PICTURES, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
optical_character_recognition <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(OPTICAL_CHARACTER_RECOGNITION, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
combining_diacritic_marks_for_symbols <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(COMBINING_DIACRITIC_MARKS_FOR_SYMBOLS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
aegean_numbers <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(AEGEAN_NUMBERS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
ancient_greek_numbers <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ANCIENT_GREEK_NUMBERS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
fullwidth_ascii_digits <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(FULLWIDTH_ASCII_DIGITS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
common_indic_number_forms <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(COMMON_INDIC_NUMBER_FORMS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
coptic_epact_numbers <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(COPTIC_EPACT_NUMBERS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
counting_rod_numerals <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(COUNTING_ROD_NUMERALS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
number_forms <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(NUMBER_FORMS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
rumi_numeral_symbols <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(RUMI_NUMERAL_SYMBOLS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
sinhala_archaic_numbers <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SINHALA_ARCHAIC_NUMBERS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
math_arrows <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(MATH_ARROWS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
supplemental_arrows_a <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SUPPLEMENTAL_ARROWS_A, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
supplemental_arrows_a <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SUPPLEMENTAL_ARROWS_A, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
supplemental_arrows_a <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SUPPLEMENTAL_ARROWS_A, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
additional_arrows <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ADDITIONAL_ARROWS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
supplemental_mathematical_operators <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SUPPLEMENTAL_MATHEMATICAL_OPERATORS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
miscellaneous_mathematical_symbols_a <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(MISCELLANEOUS_MATHEMATICAL_SYMBOLS_A, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
miscellaneous_mathematical_symbols_b <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(MISCELLANEOUS_MATHEMATICAL_SYMBOLS_B, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
floors_and_ceilings <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(FLOORS_AND_CEILINGS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
invisible_operators <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(INVISIBLE_OPERATORS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
geometric_shapes <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(GEOMETRIC_SHAPES, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
box_drawing <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(BOX_DRAWING, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
block_elements <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(BLOCK_ELEMENTS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
geometric_shapes_extended <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(GEOMETRIC_SHAPES_EXTENDED, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
alchemical_symbols <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ALCHEMICAL_SYMBOLS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
braille_patterns <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(BRAILLE_PATTERNS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
currency_symbols <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CURRENCY_SYMBOLS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
dingbats <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(DINGBATS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
ornamental_dingbats <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ORNAMENTAL_DINGBATS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
emoticons <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(EMOTICONS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
chess_checkers_draughts <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CHESS_CHECKERS_DRAUGHTS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
domino_tiles <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(DOMINO_TILES, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
japanese_chess <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(JAPANESE_CHESS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
mahjong_tiles <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(MAHJONG_TILES, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
playing_cards <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(PLAYING_CARDS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
card_suits <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CARD_SUITS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
miscellaneous_symbols_and_pictographs <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(MISCELLANEOUS_SYMBOLS_AND_PICTOGRAPHS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
musical_symbols <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(MUSICAL_SYMBOLS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
ancient_greek_musical_notation <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ANCIENT_GREEK_MUSICAL_NOTATION, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
byzantine_musical_symbols <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(BYZANTINE_MUSICAL_SYMBOLS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
transport_and_map_symbols <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(TRANSPORT_AND_MAP_SYMBOLS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
yijing_mono_di_and_trigrams <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(YIJING_MONO_DI_AND_TRIGRAMS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
yijing_hexagram_symbols <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(YIJING_HEXAGRAM_SYMBOLS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
tai_xuan_jing_symbols <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(TAI_XUAN_JING_SYMBOLS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
specials <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SPECIALS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
tags <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(TAGS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
variation_selectors <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(VARIATION_SELECTORS, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
variation_selectors_supplement <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(VARIATION_SELECTORS_SUPPLEMENT, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
private_use_area <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(PRIVATE_USE_AREA, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
supplementary_private_use_area_a <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SUPPLEMENTARY_PRIVATE_USE_AREA_A, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
supplementary_private_use_area_b <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SUPPLEMENTARY_PRIVATE_USE_AREA_B, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
high_surrogates <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(HIGH_SURROGATES, lo, hi, char_class)
}

#' @rdname Unicode
#' @export
low_surrogates <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(LOW_SURROGATES, lo, hi, char_class)
}
