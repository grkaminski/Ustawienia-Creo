! =============================================
! Ustawienia do PTC Creo
!
! 14.02.2019
! Woprawne wyświetlanie w IFX normalek przy wstawianiu
!
! 25.11.2018
! Wprowadzenie ustawień globalnych do spawania
!
! 25.09.2018
! Dodanie profili Item 100x100 i 120x120
!
! 19.06.2018-26.06.2018
! Dorzucenie łozyska kulkowego 6204 (IFX-backup) i relacji na odchyłki wynikające z klasy (IFX-! backup/Note);
! Dodanie koła pasowego (SPZ,SPA,SPB,SPC) do bazy normalii (IFX-backup/Gears)
! Dodanie podkładki Schnorra i podkładki poszerzanej (ISO 7093)
!
! 07.03.2018
! Dorzucenie prętów kwadratowych (Konsorcjum Stali) do AFX
! 
! 02.03.2018
! Dorzucenie wybranych profili Arma i Bosch do AFX 
! 
! 10.02.2018
! 1. Dodanie intf_profile_dir do config.pro (ustawienia exportowe rysunków do innych formatów)
! 
! 22.01.2018
! 1. Dodanie profilu kwadratowego do AFX
!
! 07.02.2018
! 1. Dodanie pro_plot_config_dir do config.pro (odpowiada za wydruki do pdf)
! 2. Zmiana grubości linii grubych z 0,35mm na 0,25mm
!
! 22.01.2018
! 1. Wprowadzenie lokalnego katalogu AFX jako domyslnej lokalizacji z profilami (options.cfg)
! 2. Poprawka do relacji opisującej nazwę częsci i poprawnie zczytującej długość profilu (tak by ! były uwzględnione wszelkiego rodzaju skrócenia)
! 3. Dodanie zaślepek do profili Item (Equipment)
! 
! 17.01.2018
! 1. Dodanie profili Item do AFX (modele samodzielnie narysowane); przy skracaniu skorzystać z ! advance joint (basic nie działa niestety - ograniczenia twórcy rozszerzenia)
! 
! 02.12.2017
! 1. Dodanie brakującej relacji nazwa_czesci dla śruby z łbem sześciokątnym
! 
! 20.11.2017 
! 1. Dodanie w Ustawienia.dtl polecenia show_clipped_annotations yes do opcji związanych z MBD
! 2. Podczytanie ustawień rysunkowych do templates (File - Prepare - Model Properties)
! 3. Dodanie w katalogu IFX modelu parametrycznego łozyska kulkowego zwykłego, jednorzędowego ! (6304).
!
! 28.05.2017
! 1. Dodanie pozycji Hole w Config.pro oraz rozszerzenie otworów gwintowanych. Zmiana średnic ! rdzeni na zgodne z normą (wymiar d3).
! 2. Dodanie gwintów trapezowych (brak możliwości zmiany symbolu średnicy na Tr) 
! 3. Dodanie katalogu Xhatch zawierającego stardowe (defaultowe) style kreskowania
! 4. Dodanie katalogu z materiałami (material_librabry)
! 5. Symbole chropowatości (katalog w ustawieniach i wpis w config.pro)
! =============================================





! =============================================
! ** Templates
! =============================================
template_designasm D:\CREO-Ustawienia\templates\mmns_asm_design.asm
template_drawing D:\CREO-Ustawienia\formats\_a4-meil.frm
template_sheetmetalpart D:\CREO-Ustawienia\templates\mmns_part_sheetmetal.prt
template_solidpart D:\CREO-Ustawienia\templates\mmns_part_solid.prt




! =============================================
! ** Environment
! =============================================
pro_unit_length unit_mm
pro_unit_mass unit_gram
todays_date_note_format %Mmm-%dd-%yy
tolerance_standard iso
show_preview_default keep
hlr_for_quilts yes
show_selected_item_id yes
mass_property_calculate automatic
menu_show_instances no
default_geom_analysis_type feature
file_open_preview_default expanded
frt_enabled yes
piping_fluid_parameter yes
sketcher_save_preview_image yes

! =============================================
! ** Datums
! =============================================
display_annotations no
display_axes yes
display_coord_sys no
display_planes yes
display_points no
tol_display yes



! =============================================
! ** Saving models
! =============================================
rename_drawings_with_object both
save_drawing_picture_file both
allow_save_as_instance yes

! =============================================
! ** Drawing
! =============================================
drawing_setup_file D:\CREO-Ustawienia\Ustawienia.dtl
format_setup_file D:\CREO-Ustawienia\Ustawienia.dtl
enable_shaded_view_in_drawings yes
allow_move_view_with_move yes



! =============================================
! ** Assembly
! =============================================
comp_assemble_start default



! ============================================
! ** Directory structure
! ============================================
pro_weld_params_dir D:\Creo-Ustawienia\welding
pro_surface_finish_dir D:\Creo-Ustawienia\symbole\surffins
pro_material_dir D:\Creo-Ustawienia\materials-library
hole_parameter_file_path D:\Creo-Ustawienia\Hole
pro_crosshatch_dir D:\Creo-Ustawienia\Xhatch
pro_plot_config_dir D:\Creo-Ustawienia\Wydruk
intf_profile_dir D:\Creo-Ustawienia\Export
plot_file_dir D:\CREO-Ustawienia\Wydruk\
pro_format_dir D:\CREO-Ustawienia\formats
pro_note_dir D:\CREO-Ustawienia\Note
pro_font_dir D:\CREO-Ustawienia\czcionka
tolerance_table_dir D:\CREO-Ustawienia\tol_tables\iso



! ============================================
! ** Search paths
! ============================================
search_path_file $CREO_COMMON_FILES\afx\parts\prolibrary\search.pro
search_path D:\CREO-Ustawienia\IFX\NUTS
search_path D:\CREO-Ustawienia\IFX\SCREWS
search_path D:\CREO-Ustawienia\IFX\WASHERS


! =============================================
! ** Layer definitions
! =============================================
save_hidden_items_w_status      NO
def_layer LAYER_COSM_SKETCH	cosmetic
def_layer LAYER_CURVE		curve
def_layer LAYER_DATUM		datums
def_layer LAYER_GTOL		gtol
def_layer LAYER_THREAD_FEAT	threads
def_layer LAYER_SFIN		surf_fin
def_layer LAYER_ASSEM_MEMBER	assembly
def_layer LAYER_ASSY_CUT_FEAT	assy_cut
def_layer LAYER_AXIS		axis
def_layer LAYER_CHAMFER_FEAT	chamfer
def_layer LAYER_CUT_FEAT	cut
def_layer LAYER_CSYS		csys
def_layer LAYER_DETAIL_ITEM	detail_item
def_layer LAYER_DIM		dimensions
def_layer LAYER_DRAFT_DIM	draft_dim
def_layer LAYER_DRAFT_ENTITY	draft
def_layer LAYER_DRIVEN_DIM	driven_dim
def_layer LAYER_FEATURE		features
def_layer LAYER_HOLE_FEAT	hole
def_layer LAYER_NOTE		draw_notes
def_layer LAYER_PARAMETER_DIM	param_dim
def_layer LAYER_POINT		points
def_layer LAYER_PROTRUSION_FEAT	protrusion
def_layer LAYER_REFDIM		ref_dim
def_layer LAYER_ROUND_FEAT	round
def_layer LAYER_SDRAFT_FEAT	draft
def_layer LAYER_SHELL_FEAT	shell
def_layer LAYER_SURFACE		surfaces
def_layer LAYER_SYMBOL		symbols


! =============================================
! ** Bill Of Materials
! =============================================
bom_format D:\CREO-Ustawienia\BOM\bom_tw.txt


! =============================================
! ** Plotter configuration
! =============================================
pen_table_file D:\Creo-Ustawienia\Wydruk\drukuj.pnt
use_8_plotter_pens yes
pdf_use_pentable yes



! =============================================
! ** Manufacturing
! =============================================
pro_mf_workcell_dir D:\CREO-Ustawienia\Manufacturing\WorkCenter
pro_mf_tprm_dir D:\CREO-Ustawienia\Manufacturing\Tools
pro_mf_clamp_dir D:\CREO-Ustawienia\Manufacturing\Fixtures
template_boardpart $PRO_DIRECTORY\templates\inlbs_ecad_board.prt
template_new_ecadasm $PRO_DIRECTORY\templates\inlbs_ecad_asm.asm


! =============================================
! ** Welding
! =============================================
weld_edge_prep_driven_by part
weld_edge_prep_groove_angle 45.0
weld_edge_prep_groove_depth 0.25
weld_edge_prep_instance yes
weld_edge_prep_name_suffix _weld
weld_edge_prep_root_open 0.25
weld_fillet_preferences_file D:\Creo-Ustawienia\welding\135-mag_fillet.spwx
weld_general_preferences_file D:\Creo-Ustawienia\welding\135-mag_general.spwx
weld_geom_type_default solid
weld_groove_preferences_file D:\Creo-Ustawienia\welding\135-mag_butt.spwx
weld_plug_slot_preferences_file D:\Creo-Ustawienia\welding\135-mag_plug-slot.spwx
weld_spot_preferences_file D:\Creo-Ustawienia\welding\135-mag_spot.spwx
weld_dec_places 0
weld_ui_standard iso
add_weld_mp yes

! =============================================
! ** Importing\Exporting
! ============================================
import_profiles_catiav5 D:\Creo-Ustawienia\import.dip
import_profiles_ced D:\Creo-Ustawienia\import.dip
import_profiles_solidworks D:\Creo-Ustawienia\import.dip
import_profiles_nx D:\Creo-Ustawienia\import.dip
step_export_dwg_views as_3d_views_assoc_draft
export_profiles_step D:\Creo-Ustawienia\def_profile.dep_step
dm_auto_open_zip yes

! =============================================
! ** Misc configurations
! ============================================
! prodevdat D:\Program Files\Caess\ProTOpX\CI3\protk.dat
! toolkit_registry_file D:\CREO-Ustawienia\myprotk.dat


! =============================================
! ** Odwrócenie działania zoom myszki
! ============================================
!use_inverted_mousewheel_zoom yes








! =============================================
! ** Keyboard Macro's
! =============================================


