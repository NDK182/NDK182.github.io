GDPC                                                                                <   res://.import/ball.png-9a4ca347acb7532f6ae347744a6b04f7.stex�      J       ��F���k,�.�&{T<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex`      �      _��14���
>�y�D   res://.import/left_pallete.png-bc33611074a0f886142e37c77bd2545a.stex #      N       U4�}�H�6�=U]�H   res://.import/right_pallete.png-fc6e4a6a7c8197834656482b94708e47.stex   P/      N       	_PI6f��H��_�^VD   res://.import/separator.png-f981c8489b9148e2e1dc63398273da74.stex   `2      R       ������qs97V�   res://2D_in_3D.gd.remap �5      #       Q�v�U;�*\���"��   res://2D_in_3D.gdc  `      �      ��%
���p����`   res://2D_in_3D.tscn P      N      ���P�h[����[�d�   res://ball.png.import   �      �      %�.Ax>���}�P   res://default_env.tres  �      �       ���&xb$�����o��   res://icon.png  �5      W      ��$KF�_�c�#��   res://icon.png.import   P       �      ��fe��6�B��^ U�    res://left_pallete.png.import   P#      �      �}V�\�f�������   res://pong.gd.remap �5             ���I��Ǌ���J�   res://pong.gdc  &      7	       f���hl��S��
7�   res://project.binary0<      �      ����U�=�c��<��    res://right_pallete.png.import  �/      �      ��}f���(��3����   res://separator.png.import  �2      �      ��A6�D�2��ey+�            GDSC            ?      ������ڶ   �����϶�   �������¶���   �������¶���   �������������Ӷ�   ��������������������������   �������Ӷ���   �����������Ҷ���   ����������������Ӷ��   �������������Ӷ�   ����������Ӷ   
   idle_frame                     	      
                           	   %   
   .      /      0      =      3YY0�  PQV�  �  ;�  W�  �  W�  T�  P�  T�  QY�  �  AP�  PQRQ�  AP�  PQRQY�  �  W�  T�  T�	  �  T�
  PQY`       [gd_scene load_steps=13 format=2]

[ext_resource path="res://2D_in_3D.gd" type="Script" id=1]
[ext_resource path="res://pong.gd" type="Script" id=2]
[ext_resource path="res://ball.png" type="Texture" id=3]
[ext_resource path="res://left_pallete.png" type="Texture" id=4]
[ext_resource path="res://right_pallete.png" type="Texture" id=5]
[ext_resource path="res://separator.png" type="Texture" id=6]

[sub_resource type="PlaneMesh" id=1]

[sub_resource type="SpatialMaterial" id=2]
roughness = 0.7

[sub_resource type="CubeMesh" id=3]

[sub_resource type="SpatialMaterial" id=4]
albedo_color = Color( 0.652344, 0.652344, 0.652344, 1 )
roughness = 0.0

[sub_resource type="CubeMesh" id=5]
size = Vector3( 1.1, 0.8, 0.1 )

[sub_resource type="SpatialMaterial" id=6]

[node name="2Din3D" type="Spatial"]
script = ExtResource( 1 )

[node name="Camera" type="Camera" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1.1, 0 )
fov = 74.0
near = 0.1

[node name="Floor" type="MeshInstance" parent="."]
transform = Transform( 4, 0, 0, 0, 4, 0, 0, 0, 4, 0, -1, -2 )
mesh = SubResource( 1 )
material/0 = SubResource( 2 )

[node name="Pillar1" type="Spatial" parent="."]
transform = Transform( 0.6, 0, 0, 0, 0.6, 0, 0, 0, 0.6, -3, -0.2, -4 )

[node name="PillarBottom" type="MeshInstance" parent="Pillar1"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -0.5, 0 )
mesh = SubResource( 3 )
material/0 = SubResource( 4 )

[node name="PillarTop" type="MeshInstance" parent="Pillar1"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 5.5, 0 )
mesh = SubResource( 3 )
material/0 = SubResource( 4 )

[node name="PillarMiddle" type="MeshInstance" parent="Pillar1"]
transform = Transform( 0.7, 0, 0, 0, 2, 0, 0, 0, 0.7, 0, 2.5, 0 )
mesh = SubResource( 3 )
material/0 = SubResource( 4 )

[node name="Pillar2" type="Spatial" parent="."]
transform = Transform( 0.6, 0, 0, 0, 0.6, 0, 0, 0, 0.6, 3, -0.2, -4 )

[node name="PillarBottom" type="MeshInstance" parent="Pillar2"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -0.5, 0 )
mesh = SubResource( 3 )
material/0 = SubResource( 4 )

[node name="PillarTop" type="MeshInstance" parent="Pillar2"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 5.5, 0 )
mesh = SubResource( 3 )
material/0 = SubResource( 4 )

[node name="PillarMiddle" type="MeshInstance" parent="Pillar2"]
transform = Transform( 0.7, 0, 0, 0, 2, 0, 0, 0, 0.7, 0, 2.5, 0 )
mesh = SubResource( 3 )
material/0 = SubResource( 4 )

[node name="PillarBack" type="MeshInstance" parent="."]
transform = Transform( 4, 0, 0, 0, 4, 0, 0, 0, 4, 0, 1.2, -4.5 )
mesh = SubResource( 5 )
material/0 = SubResource( 4 )

[node name="DirectionalLight" type="DirectionalLight" parent="."]
transform = Transform( 0.623013, -0.733525, 0.271654, 0.321394, 0.55667, 0.766044, -0.713134, -0.389948, 0.582563, 0, 10, 0 )
shadow_enabled = true
directional_shadow_blend_splits = true
directional_shadow_normal_bias = 0.2

[node name="ViewportQuad" type="MeshInstance" parent="."]
transform = Transform( 2, 0, 0, 0, 0, -1.333, 0, 1, 0, 0, 1.2, -4.25 )
material_override = SubResource( 6 )
mesh = SubResource( 1 )
material/0 = null

[node name="Viewport" type="Viewport" parent="."]
size = Vector2( 600, 400 )
hdr = false
usage = 0
render_target_v_flip = true

[node name="Pong" type="Node2D" parent="Viewport"]
script = ExtResource( 2 )

[node name="Background" type="Panel" parent="Viewport/Pong"]
margin_right = 600.0
margin_bottom = 400.0

[node name="Ball" type="Sprite" parent="Viewport/Pong"]
position = Vector2( 300, 200 )
texture = ExtResource( 3 )

[node name="LeftPaddle" type="Sprite" parent="Viewport/Pong"]
position = Vector2( 20, 200 )
texture = ExtResource( 4 )

[node name="RightPaddle" type="Sprite" parent="Viewport/Pong"]
position = Vector2( 580, 200 )
texture = ExtResource( 5 )

[node name="Separator" type="Sprite" parent="Viewport/Pong"]
position = Vector2( 298, 200 )
texture = ExtResource( 6 )
  GDST                .   WEBPRIFF"   WEBPVP8L   /�0��?���8�D��       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/ball.png-9a4ca347acb7532f6ae347744a6b04f7.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://ball.png"
dest_files=[ "res://.import/ball.png-9a4ca347acb7532f6ae347744a6b04f7.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
ssao_blur = 1
               GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?� �|�!���l#@����= ���\۶"�9�gfw��gZ��j&y!$��\ ��)��2#�]+�G��x�m[�m7������	J�T\hT)*G/سK�d[��^����̠!
b*�M,13Ӄ{V0p�HQz07ץO����P�`�hxh��RFʔ�>��I�P�)��Dh 'j�!q����'�W����8�B �
�QP���Q��z(OyŠ1�� ��D"q�k���Pu�Q�RE   (��C�!(!����`�
�H��r�J�)�����1F��ģ��@(@<@B�xѩ�a1����[��c8RBH9���m	0 ���	�! ���A b���+_댷�qU�
��j"�`��0� <� �1�� �J�ը:���� �
 C< �0T@F�LU��1�+W3�/)��H@� ���X�����9<G�!��et1D�*�*�T g�y<�Tv�� �É��1�L�mY�������V лx�MJe7����W��� J��'Po��}���t*NR�x~x�����o�WO~�xHU�ȕ�w��zE��^���P��?_���mbu�م����~��:X�
`^!��-�"	��^Y�����!2T���C�L�V�SN�c���b  �#�?���ZD8�ns�ǽi��Lw`���vYGx0 p�*T
x�|�+�7�M�����Gix� 4	���,2q*1���fw�������m�PP�3$�
,�����l�'�eݨ�i���YֹЬ];s�!����4���.5�[Wm�WF�e �̟�ss��5;�b��+d���~�}[��v�+�_֟�����\��/���K����ah�cL��}�Ϗ�����o�x��������b@�!��	1TX}�<�o}�Y�;M%��CI<�1(t����$t��m?�Ww}s�E��@�΄�tU�@Z@Jyn���m
�EXҜ����1�F�u��i����0i6FvR���;�$�$�m�f�445E��L�����A���F�P�)"AS�i��:Q��\ d�e�a� ؚ�e�������?o3���s�)0Յ.�Y���Ok����k.!��s���H閖����Э^�A�I��d��y�F�V�3l ��
� ��o��� r.���ͫ��]����[�6d�B�q��ǟ�^���k��Mm��o�]F������^~{ ����,�Tv��9w^�T�"��(@�zP,b⠪G�E7K��<��&ط.?�KY�z:˦��ZW:�u:cc����\cv[|bV\6�-�z��N6��2�E�_�l���b��+���k$sM�����E������_p�WwK�0>yϽ���L��LƤ�yaL0������֏��� Z            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDST                 2   WEBPRIFF&   WEBPVP8L   /�0�1��#Ă�����3���  [remap]

importer="texture"
type="StreamTexture"
path="res://.import/left_pallete.png-bc33611074a0f886142e37c77bd2545a.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://left_pallete.png"
dest_files=[ "res://.import/left_pallete.png-bc33611074a0f886142e37c77bd2545a.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
     GDSC   "      D   �     ���ӄ�   ��������򶶶   ������������������   ���������Ҷ�   ����������Ӷ   ��������ض��   ���ⶶ��   �������Ӷ���   ���ڶ���   ���ڶ���   ����������Ӷ   ���������Ӷ�   �����������Ӷ���   ����������Ӷ   �����϶�   ����������������¶��   ���Ӷ���   ����������Ӷ   �������Ӷ���   �������Ŷ���   ����׶��   �������Ŷ���   �����������ض���   ��������¶��   ���������¶�   ϶��   ��������¶��   ζ��   ���������Ҷ�   �����������ض���   �������Ŷ���   ����¶��   ����������������Ҷ��   ��������Ŷ��   �      P      �     �                     ?         �������?      @            left_move_up      left_move_down        right_move_up         right_move_down                                                     	      
   &      0      1      8      ?      F      G      M      U      a      b      c      j      k      t      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '     (     )     *     +   "  ,   (  -   ,  .   6  /   7  0   >  1   ?  2   @  3   I  4   J  5   Y  6   b  7   s  8   {  9   |  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   3YY:�  Y:�  �  YY;�  �  Y;�  �  P�  R�  QYYY;�  �  T�  Y;�  �  P�  R�  QYY5;�  W�	  Y5;�
  W�  Y5;�  W�  YY0�  PQV�  �  �  PQT�  �  �  �
  T�  PQT�  PQYYY0�  P�  QV�  �  ;�  �  T�  PQ�  ;�  �  P�
  T�  PQ�  �  R�  Q�  ;�  �  P�  T�  PQ�  �  R�  QY�  �  �  �  �  �  Y�  �  &P�  T�  	�  �  T�  	�  QP�  T�  �  T�  �  T�  �  QV�  �  T�  �  T�  Y�  �  &P�  T�  P�  Q�  T�  	�  QP�  T�  P�  Q�  T�  �  QV�  �  T�  �  T�  �  �  �  �  �  T�  �'  PQ�	  �
  �  �  �  T�  PQY�  �  &�  T�  	�  �  T�  �  T�  V�  �  �  �  �  �  �  �  �  �  P�
  R�  QY�  �  T�  P�  QY�  �  ;�  �
  T�  PQY�  &�  T�  �  �  T�   P�  QV�  �  T�  �  �  �  &�  T�  	�  T�  �  T�   P�  QV�  �  T�  �  �  Y�  �
  T�  P�  QY�  �  ;�!  �  T�  PQ�  &�!  T�  �  �  T�   P�  QV�  �!  T�  �  �  �  &�!  T�  	�  T�  �  T�   P�  QV�  �!  T�  �  �  Y�  �  T�  P�!  QY`         GDST                 2   WEBPRIFF&   WEBPVP8L   /��?��#Ă�����3���  [remap]

importer="texture"
type="StreamTexture"
path="res://.import/right_pallete.png-fc6e4a6a7c8197834656482b94708e47.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://right_pallete.png"
dest_files=[ "res://.import/right_pallete.png-fc6e4a6a7c8197834656482b94708e47.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  GDST   �            6   WEBPRIFF*   WEBPVP8L   /�c0��?��� ��i;���E���}a               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/separator.png-f981c8489b9148e2e1dc63398273da74.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://separator.png"
dest_files=[ "res://.import/separator.png-f981c8489b9148e2e1dc63398273da74.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [remap]

path="res://2D_in_3D.gdc"
             [remap]

path="res://pong.gdc"
 �PNG

   IHDR   @   @   %�  IDATx�tS	�0'���n?�s6kƌ<�J%�0�6����z�ڤuÊ�Sy����,�X�k�$�P2��U�nL}�T=g-��le-�jVZj�w��Z˸^bp�	h
%�@
U���r�[67Z&�ו�<��]A"���.�nU
�h��L�H Y�n�){X�F�Ń��8�q�!TX�Mk��2Qhd^�G��s��,�V;�C�}����ǤMӧ�z���d;?/nO����?�#�Ϙ��:�b���IfI9K@���%�v��x@�R�^
�Fr�[A���5䗵�l����CߵR�I��23D�猆�;C���Q��kޚg/��>�7�끞$ѽ�	���r"�-攉֢���Z���7
���U�����Z��v\�� ������ef�Y�gy��c�	��(�2��9��9�]fl�6ɖj�q/�>K�C>���̤��U�'�?�ѩ�O��sϾ�fY%Ԣ3@8*<��]�_|�D%c0�������ҫo/%��"60���N��4�I���kgN��?�S0��,����;�Gcwa�-w�{��� �J�с�o�e:�d�&	�$��`�RY.�I�U�5��ÖW!��l�
 �+$���K�G4^���.����l�A0���d�^��.�y�]ȃ�@�@t���K�GR#�Y�ěވU'~�Y�
�@Ar�\(�w�*�Ah.�:�BĶ���ᨵ*J�%����v�M��gW�@#w�N �Y�y��$�5
�	1o�f�2�/J�e��@�m%��w܉\2 #�Bi�ȈL�d![� If�� Y�=��j323�k9-�CB<�q� 	�`�ӯ|5�%6������`o�o��;7�M!	�S�t�v��/|��q}qG�
�R�X^���p ���?���� ��@n�I��.������z��'O��������'�#+�I��d�8�dV����Jd&
DJ����|>G$��Y�/�M 2.u@=�eff��y $��e�� tAp=�P���]�v_��]��S]��i/����;�ؖn6/WOHfYsϝ������;�k/��}#nE�UȀ��uq��H̸$)fMwi̩E��f/�Ųx2#?
��:��%=�^�-��
b��z�X�E=���y{��b"!Ŭ�n*fE�F�D2y2	@�t�m���Ef��~����&����A@�-�޲������������^,� �{P�O¶Hϵ���lQ.Rr �ճ5����
�����c!J�\��~�[����<��H
f7�п�������O%;,$b�%6�.�&���;'.4 ��Md[lZ�4�������j�\j}������I
W��`���s�E�f�{e������PU셪�-�$#��^���c���p؛U�����q�D/I.,U�̸(��`�*�y��q��2Z~@��/��l��gI�]�xv��gn6��_=e�@ �|����S�Q?�?���;���������H��6��ǻ��K�#n����0�    IEND�B`�         ECFG      application/config/name         2D in 3D   application/config/descriptionT      K   A demo showing how a 2D scene can be shown within a 3D one using viewports.    application/run/main_scene         res://2D_in_3D.tscn    application/config/icon         res://icon.png     gdnative/singletons             input/left_move_up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      physical_scancode             unicode           echo          script         input/left_move_down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      physical_scancode             unicode           echo          script         input/right_move_up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script         input/right_move_down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script      $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres   