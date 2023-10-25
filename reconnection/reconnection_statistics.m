clear; close all;
stamp = 'plotted by reconnection\_statistics.m';
save_or_not = 0;
%% test
% num_case = 1;
% case_enc_lst = [5];
% case_day_lst = ['20200601'];
% plot_beg_lst = ['19:48:01'];
% plot_end_lst = ['19:56:59'];
% Vdata_lst = ['spc'];
% fmva_beg_lst = ['19:48:00'];
% fmva_end_lst = ['19:57:00'];
% lead_beg_lst = ['19:48'];
% lead_end_lst = ['19:49'];
% tral_beg_lst = ['19:55'];
% tral_end_lst = ['19:56'];
%% list of (complete) cases: case_day_lst, plot_beg_lst, plot_end_lst, Vdata_lst,mva_beg_lst, mva_end_lst,lead_beg_lst, lead_end_lst, tral_beg_lst, tral_end_lst,exht_beg_lst, exht_end_lst
num_comp = 15;
comp_lst = 1 : 1 : num_comp;
comp_enc_lst = [5,5,5,5,6,6,6,6,7,7,8,8,8,8,8];
comp_slt_ind = [3,4,5,6,8,11,12,13,15];
comp_day_lst = ['20200526';'20200529';'20200601';'20200608';'20200919';'20200920';'20200925'; ...
    '20200925';'20210117';'20210123';'20210429';'20210429';'20210429';'20210429';'20210429'];
comp_plot_beg_lst = ['17:00:01';'23:00:01';'19:48:01';'11:00:01';'23:00:01';'20:45:01';'10:00:01'; ...
    '13:30:01';'14:10:01';'00:28:01';'00:50:01';'07:50:01';'09:20:01';'09:30:01';'13:37:01'];
comp_plot_end_lst = ['20:59:59';'23:44:59';'19:56:59';'11:13:59';'23:05:59';'20:59:59';'10:49:59'; ...
    '13:35:59';'14:29:59';'00:31:59';'00:59:59';'08:39:59';'09:29:59';'10:29:59';'13:44:59'];
comp_Vdata_lst = ['spc';'spc';'spc';'spi';'spc';'spc';'spi'; ...
    'spi';'spi';'spc';'spi';'spi';'spi';'spi';'spi'];
comp_fmva_beg_lst = ['17:01:00';'23:00:00';'19:48:00';'11:01:00';'23:02:00';'20:46:00';'10:15:00'; ...
    '13:30:00';'14:11:00';'00:28:00';'00:50:00';'08:01:00';'09:20:00';'09:30:00';'13:41:00'];
comp_fmva_end_lst = ['20:59:00';'23:44:00';'19:56:00';'11:14:00';'23:05:00';'20:59:00';'10:29:00'; ...
    '13:36:00';'14:29:00';'00:32:00';'00:59:00';'08:39:00';'09:30:00';'09:57:00';'13:43:00'];
comp_lead_beg_lst = ['17:51:00';'23:10:00';'19:48:00';'11:01:00';'23:01:00';'20:46:00';'10:01:00'; ...
    '13:30:00';'14:10:00';'00:28:00';'00:52:00';'08:11:00';'09:20:00';'09:30:00';'13:40:00'];
comp_lead_end_lst = ['17:59:00';'23:20:00';'19:51:00';'11:05:00';'23:02:30';'20:52:00';'10:10:00'; ...
    '13:32:00';'14:15:00';'00:29:00';'00:54:00';'08:14:00';'09:24:00';'09:34:00';'13:40:40'];
comp_tral_beg_lst = ['20:15:00';'23:35:00';'19:53:00';'11:07:00';'23:04:30';'20:54:00';'10:40:00'; ...
    '13:34:00';'14:27:00';'00:30:00';'00:57:00';'08:33:00';'09:26:00';'09:53:00';'13:42:00'];
comp_tral_end_lst = ['20:34:00';'23:45:00';'19:56:00';'11:11:00';'23:06:00';'20:58:00';'10:49:00'; ...
    '13:36:00';'14:30:00';'00:31:00';'00:59:00';'08:36:00';'09:30:00';'09:57:00';'13:43:00'];
comp_exht_beg_lst = ['18:50:00';'23:20:30';'19:51:00';'11:05:30';'23:02:30';'20:53:40';'10:20:00'; ...
    '13:33:10';'14:15:00';'00:29:25';'00:54:45';'08:14:30';'09:24:30';'09:35:00';'13:40:40'];
comp_exht_end_lst = ['20:10:00';'23:27:30';'19:52:30';'11:06:30';'23:03:30';'20:54:10';'10:35:00'; ...
    '13:34:00';'14:21:30';'00:29:35';'00:55:20';'08:28:00';'09:25:30';'09:47:00';'13:41:40'];
%% list of (partial) cases: case_day_lst, plot_beg_lst, plot_end_lst, Vdata_lst,mva_beg_lst, mva_end_lst,lead_beg_lst, lead_end_lst, tral_beg_lst, tral_end_lst,exht_beg_lst, exht_end_lst
num_part = 3;
part_lst = 1 : 1 : num_part;
part_enc_lst = [5,5,5];
part_day_lst = ['20200529';'20200601';'20200604'];
part_plot_beg_lst = ['22:00:01';'15:35:01';'03:00:01'];
part_plot_end_lst = ['22:59:59';'16:24:59';'08:29:59'];
part_Vdata_lst = ['spc';'spi';'spi'];
part_fmva_beg_lst = ['22:00:00';'14:45:00';'05:22:00'];
part_fmva_end_lst = ['23:00:00';'15:15:00';'05:24:00'];
part_lead_beg_lst = part_plot_beg_lst;
part_lead_end_lst = part_plot_end_lst;
part_tral_beg_lst = part_plot_beg_lst;
part_tral_end_lst = part_plot_end_lst;
part_exht_beg_lst = ['22:26:00';'15:53:00';'04:00:00'];
part_exht_end_lst = ['22:50:00';'16:08:00';'05:58:00'];
%% complete, partial or all cases
num_case = num_part + num_comp - 6;
case_lst = [part_lst, comp_lst(comp_slt_ind)];
case_enc_lst = [part_enc_lst, comp_enc_lst(comp_slt_ind)];
case_day_lst = [part_day_lst; comp_day_lst(comp_slt_ind,:)];
plot_beg_lst = [part_plot_beg_lst; comp_plot_beg_lst(comp_slt_ind,:)];
plot_end_lst = [part_plot_end_lst; comp_plot_end_lst(comp_slt_ind,:)];
Vdata_lst = [part_Vdata_lst; comp_Vdata_lst(comp_slt_ind,:)];
fmva_beg_lst = [part_fmva_beg_lst; comp_fmva_beg_lst(comp_slt_ind,:)];
fmva_end_lst = [part_fmva_end_lst; comp_fmva_end_lst(comp_slt_ind,:)];
lead_beg_lst = [part_lead_beg_lst; comp_lead_beg_lst(comp_slt_ind,:)];
lead_end_lst = [part_lead_end_lst; comp_lead_end_lst(comp_slt_ind,:)];
tral_beg_lst = [part_tral_beg_lst; comp_tral_beg_lst(comp_slt_ind,:)];
tral_end_lst = [part_tral_end_lst; comp_tral_end_lst(comp_slt_ind,:)];
exht_beg_lst = [part_exht_beg_lst; comp_exht_beg_lst(comp_slt_ind,:)];
exht_end_lst = [part_exht_end_lst; comp_exht_end_lst(comp_slt_ind,:)];
back_beg_lst = ['22:00:00';'15:35:00';'06:30:00';'19:53:00';'11:04:00';'23:01:00';'20:52:00'; ...
    '13:31:10';'00:56:00';'08:00:00';'09:23:00';'13:39:00'];
back_end_lst = ['22:24:00';'15:50:00';'08:30:00';'19:54:30';'11:05:00';'23:02:00';'20:52:30'; ...
    '13:32:00';'00:56:35';'08:13:30';'09:24:00';'13:40:00'];
%%

%% target properties
% lambda2/lambda1 of MVA method
ratio21_lst = zeros(num_case,1);
% distance from the Sun
dist_lst = zeros(num_case,1); % unit: Rs
% plasma velocity in inflow region
V_inflow_lst = zeros(num_case,1); % unit: km/s
% Alfven speed in inflow region
Va_infw_lst = zeros(num_case,1); % unit: km/s
% Alfven speed based on L component
delta_VaL_lst = zeros(num_case,1); % unit: km/s
% asymmetric Alfven speed in inflow region
VaL_asy_lst = zeros(num_case,1); % unit: km/s
% shear velocity based on L component
VL_shear_lst = zeros(num_case,1);
% shear angle of magnetic angle
SA_lst = zeros(num_case,1); % unit: deg.
% plasma beta in inflow region
beta_lead_lst = zeros(num_case,1);
beta_tral_lst = zeros(num_case,1);
% plasma beta in exhaust region
beta_exht_lst = zeros(num_case,1);
% ion temperature in inflow and exhaust region
Tp_infw_lst = zeros(num_case,1); % unit: eV
Tp_exht_lst = zeros(num_case,1); % unit: eV
% jet velocity in exhaust region
V_exht_lst = zeros(num_case,1); % unit: km/s
% normalized guide field
guide_norm_lst = zeros(num_case,1);
% ionic inertia length
di_lst =  zeros(num_case,1); % unit: km
% current sheet thickness
Lcs_lst = zeros(num_case,1); % unit: km
%% relative scientific constants
kB = 1.380649e-23;
mu0 = 1.2566370614e-6;
mp = 1.67262192e-27; % unit: kg
e = -1.6021766208e-19; % unit: C
cL = 299792458 * 1e-3; % unit: km/s
Rs = 6.955e5; % unit: km
eV2K = 11605;
%% data analysis
for i_case = 1:num_case %10
    close all;
    psp_dir = ['E:\Research\Data\PSP\Encounter ',num2str(case_enc_lst(i_case)),'\'];
    case_day = case_day_lst(i_case,:);
    plot_beg_epoch = datenum([case_day(1:4),'-',case_day(5:6),'-',case_day(7:8),' ',plot_beg_lst(i_case,:)]);
    plot_end_epoch = datenum([case_day(1:4),'-',case_day(5:6),'-',case_day(7:8),' ',plot_end_lst(i_case,:)]);
%% fld data: Brtn
    % import data
    fld_list = ['00';'06';'12';'18'];
    fld_file = ['psp_fld_l2_mag_rtn_',case_day,fld_list(1,:),'_v02.cdf'];
    fld_dir = [psp_dir,fld_file];
    fld_info = spdfcdfinfo(fld_dir);
    % extract data
    fld_epoch = spdfcdfread(fld_dir,'Variables','epoch_mag_RTN');
    Brtn = spdfcdfread(fld_dir,'Variables','psp_fld_l2_mag_RTN');
    for i_fld = 2 : length(fld_list)
        fld_file_sub = ['psp_fld_l2_mag_rtn_',case_day,fld_list(i_fld,:),'_v02.cdf'];
        fld_dir_sub = [psp_dir,fld_file_sub];
        fld_epoch_sub = spdfcdfread(fld_dir_sub,'Variables','epoch_mag_RTN');
        Brtn_sub = spdfcdfread(fld_dir_sub,'Variables','psp_fld_l2_mag_RTN');
        % joint data
        fld_epoch = cat(1,fld_epoch,fld_epoch_sub);
        Brtn = cat(1,Brtn,Brtn_sub);
    end
    % eliminate bad points
    Brtn(abs(Brtn)>1e3) = nan;
    % components
    Br = Brtn(:,1); Bt = Brtn(:,2); Bn = Brtn(:,3);
    B_mod = sqrt(Br.^2 + Bt.^2 + Bn.^2);
    % plot period
    fld_plot_index = find(fld_epoch>=plot_beg_epoch & fld_epoch<=plot_end_epoch);
    fld_epoch_plot = fld_epoch(fld_plot_index);
    Brtn_plot = Brtn(fld_plot_index,:);
    Br_plot = Br(fld_plot_index);
    Bt_plot = Bt(fld_plot_index);
    Bn_plot = Bn(fld_plot_index);
    B_mod_plot = B_mod(fld_plot_index);
%% spc data: Vrtn_spc, Np_spc, Tp_spc, Vsc, HCIxyz
    % import data
    spc_file = ['psp_swp_spc_l3i_',case_day,'_v02.cdf'];
    spc_dir = [psp_dir,spc_file];
    spc_info = spdfcdfinfo(spc_dir);
    % extract data
    spc_epoch = spdfcdfread(spc_dir,'Variables','Epoch');
    general_flag = spdfcdfread(spc_dir,'Variables','general_flag');
    Vrtn_spc = spdfcdfread(spc_dir,'Variables','vp_moment_RTN');
    Np_spc = spdfcdfread(spc_dir,'Variables','np_moment');
    Tp_spc = spdfcdfread(spc_dir,'Variables','wp_moment');
    sc_pos_HCI = spdfcdfread(spc_dir,'Variables','sc_pos_HCI');
    sc_vel_HCI = spdfcdfread(spc_dir,'Variables','sc_vel_HCI');
    % eliminate bad points
    Vrtn_spc(abs(Vrtn_spc)>2e3) = nan;
    Np_spc(abs(Np_spc)>1e4) = nan;
    Tp_spc(abs(Tp_spc)>2e3) = nan;
    % components
    Vr_spc = Vrtn_spc(:,1);
    Vt_spc = Vrtn_spc(:,2);
    Vn_spc = Vrtn_spc(:,3);
    sc_pos_HCIx = sc_pos_HCI(:,1); % [km]
    sc_pos_HCIy = sc_pos_HCI(:,2); % [km]
    sc_pos_HCIz = sc_pos_HCI(:,3); % [km]
    sc_pos_dist = sqrt(sc_pos_HCIx.^2 + sc_pos_HCIy.^2 + sc_pos_HCIz.^2);
    sc_vel_HCIx = sc_vel_HCI(:,1);
    sc_vel_HCIy = sc_vel_HCI(:,2);
    sc_vel_HCIz = sc_vel_HCI(:,3);
    % switch sc_vel from HCI to scRTN (used for Vrtn_spi later)
    [sc_vel_RTNr,sc_vel_RTNt,sc_vel_RTNn] = calc_HCI2SCRTN(sc_vel_HCIx,sc_vel_HCIy,sc_vel_HCIz,sc_pos_HCIx,sc_pos_HCIy,sc_pos_HCIz);
    sc_vel_RTN = [sc_vel_RTNr,sc_vel_RTNt,sc_vel_RTNn];
    % get rid of general_flag ~= 0
    Vr_spc = rid_gf_ne_0(general_flag,spc_epoch,Vr_spc);
    Vt_spc = rid_gf_ne_0(general_flag,spc_epoch,Vt_spc);
    Vn_spc = rid_gf_ne_0(general_flag,spc_epoch,Vn_spc);
    Np_spc = rid_gf_ne_0(general_flag,spc_epoch,Np_spc);
    Tp_spc = rid_gf_ne_0(general_flag,spc_epoch,Tp_spc);
    % plot period
    spc_plot_index = find(spc_epoch>=plot_beg_epoch & spc_epoch<=plot_end_epoch);
    spc_epoch_plot = spc_epoch(spc_plot_index);
    general_flag_plot = general_flag(spc_plot_index);
    if strcmp(Vdata_lst(i_case,:),'spc')
        Vrtn_spc_plot = Vrtn_spc(spc_plot_index,:);
        Vr_spc_plot = Vr_spc(spc_plot_index);
        Vt_spc_plot = Vt_spc(spc_plot_index);
        Vn_spc_plot = Vn_spc(spc_plot_index);
        Np_spc_plot = Np_spc(spc_plot_index);
        Tp_spc_plot = Tp_spc(spc_plot_index);
        sc_vel_RTN_plot = sc_vel_RTN(spc_plot_index,:);
    end
    sc_pos_dist_plot = sc_pos_dist(spc_plot_index);
%% spi data: Vrtn_spi, Np_spi, Tp_spi
    % import data
    spi_file = ['psp_swp_spi_sf00_l3_mom_inst_',case_day,'_v03.cdf'];
    spi_dir = [psp_dir,spi_file];
    spi_info = spdfcdfinfo(spi_dir);
    % extract data
    spi_epoch = spdfcdfread(spi_dir,'Variables','Epoch');
    quality_flag = spdfcdfread(spi_dir,'Variables','QUALITY_FLAG');
    Vsc_spi = spdfcdfread(spi_dir,'Variables','VEL');
    SC2RTN = spdfcdfread(spi_dir,'Variables','ROTMAT_SC_INST');
    Np_spi = spdfcdfread(spi_dir,'Variables','DENS');
    Tp_spi = spdfcdfread(spi_dir,'Variables','TEMP');
    % eliminate bad points
    Vsc_spi(abs(Vsc_spi)>1e3) = nan;
    Np_spi(abs(Np_spi)>1e4) = nan;
    Tp_spi(abs(Tp_spi)>1e3) = nan;
    % switch Vsc_spi to Vrtn2sc_spi (spacecraft RTN frame)
    Vrtn2sc_spi = SC2RTN * Vsc_spi.';
    % switch Vrtn2sc_spi to Vrtn_spi (inertial RTN frame)
    sc_vel_RTNr_spi = interp1(spc_epoch,sc_vel_RTNr,spi_epoch,'pchip');
    sc_vel_RTNt_spi = interp1(spc_epoch,sc_vel_RTNt,spi_epoch,'pchip');
    sc_vel_RTNn_spi = interp1(spc_epoch,sc_vel_RTNn,spi_epoch,'pchip');
    Vr2sc_spi = -Vrtn2sc_spi(3,:); Vr_spi = Vr2sc_spi + sc_vel_RTNr_spi.';
    Vt2sc_spi =  Vrtn2sc_spi(1,:); Vt_spi = Vt2sc_spi + sc_vel_RTNt_spi.';
    Vn2sc_Spi = -Vrtn2sc_spi(2,:); Vn_spi = Vn2sc_Spi + sc_vel_RTNn_spi.';
    Vrtn_spi = [Vr_spi.',Vt_spi.',Vn_spi.'];
    % plot period
    spi_plot_index = find(spi_epoch>=plot_beg_epoch & spi_epoch<=plot_end_epoch);
    spi_epoch_plot = spi_epoch(spi_plot_index);
    if strcmp(Vdata_lst(i_case,:),'spi')
        Vrtn_spi_plot = Vrtn_spi(spi_plot_index,:);
        Vr_spi_plot = Vr_spi(spi_plot_index);
        Vt_spi_plot = Vt_spi(spi_plot_index);
        Vn_spi_plot = Vn_spi(spi_plot_index);
        Np_spi_plot = Np_spi(spi_plot_index);
        Tp_spi_plot = Tp_spi(spi_plot_index);
        sc_vel_RTN_plot = sc_vel_RTN(spi_plot_index,:);
    end
%% spe data: Pitch Angle
    % import data
    spe_file = ['psp_swp_spe_sf0_l3_pad_',case_day,'_v03.cdf'];
    spe_dir = [psp_dir,spe_file];
    spe_info = spdfcdfinfo(spe_dir);
    % extract data
    spe_epoch = spdfcdfread(spe_dir,'Variables','Epoch');
    PA_bins = spdfcdfread(spe_dir,'Variables','PITCHANGLE');
    EGY_bins = spdfcdfread(spe_dir,'Variables','ENERGY_VALS');
    PA_eflux_all = spdfcdfread(spe_dir,'Variables','EFLUX_VS_PA_E');
    % choose 314 eV energy bin
    PA_bins = PA_bins(1,:);
    EGY_bins = EGY_bins(1,:);
    PA_eflux = squeeze(PA_eflux_all(:,9,:)); % row 9: 314 eV
    % normalization
    PA_eflux_sum = sum(PA_eflux);
    PA_eflux_norm = zeros(size(PA_eflux));
    for i_spe = 1 : length(spe_epoch)
        PA_eflux_norm(:,i_spe) = PA_eflux(:,i_spe) / PA_eflux_sum(i_spe);
    end
    % plot period
    spe_plot_index = find(spe_epoch>=plot_beg_epoch & spe_epoch<=plot_end_epoch);
    spe_epoch_plot = spe_epoch(spe_plot_index);
    PA_eflux_plot = PA_eflux(:,spe_plot_index);
    PA_eflux_norm_plot = PA_eflux_norm(:,spe_plot_index);
%% select spc or spi
    if strcmp(Vdata_lst(i_case,:),'spc')
        Vr_plot = Vr_spc_plot; Vt_plot = Vt_spc_plot; Vn_plot = Vn_spc_plot;
        Np_plot = Np_spc_plot; Tp_plot = Tp_spc_plot;
        spp_epoch_plot = spc_epoch_plot;
    elseif strcmp(Vdata_lst(i_case,:),'spi')
        Vr_plot = Vr_spi_plot; Vt_plot = Vt_spi_plot; Vn_plot = Vn_spi_plot;
        Np_plot = Np_spi_plot; Tp_plot = Tp_spi_plot;
        spp_epoch_plot = spi_epoch_plot;
    end
%% interpolate into standard epoch: std_epoch, Brtn_interp, Vrtn_interp
    % standard epoch
    dTime = 0.05;
    nTime = floor((plot_end_epoch-plot_beg_epoch)*86400/dTime);
    std_time = linspace(plot_beg_epoch,plot_end_epoch,nTime);
    % interpolation
    std_epoch = interp1(fld_epoch_plot,fld_epoch_plot,std_time,'pchip');
    % fld data interpolation
    Br_interp = interp1(fld_epoch_plot,Br_plot,std_time,'linear');
    Bt_interp = interp1(fld_epoch_plot,Bt_plot,std_time,'linear');
    Bn_interp = interp1(fld_epoch_plot,Bn_plot,std_time,'linear');
    B_mod_interp = interp1(fld_epoch_plot,B_mod_plot,std_time,'linear');
    Brtn_interp = [Br_interp.',Bt_interp.',Bn_interp.'];
    % spc/spi data interpolation
    Vr_interp = interp1(spp_epoch_plot,Vr_plot,std_time,'linear');
    Vt_interp = interp1(spp_epoch_plot,Vt_plot,std_time,'linear');
    Vn_interp = interp1(spp_epoch_plot,Vn_plot,std_time,'linear');
    Np_interp = interp1(spp_epoch_plot,Np_plot,std_time,'linear');
    Tp_interp = interp1(spp_epoch_plot,Tp_plot,std_time,'linear');
    Vrtn_interp = [Vr_interp.',Vt_interp.',Vn_interp.'];
    % sc velocity data interpolation
    sc_vel_r_interp = interp1(spp_epoch_plot,sc_vel_RTN_plot(:,1),std_time,'linear');
    sc_vel_t_interp = interp1(spp_epoch_plot,sc_vel_RTN_plot(:,2),std_time,'linear');
    sc_vel_n_interp = interp1(spp_epoch_plot,sc_vel_RTN_plot(:,3),std_time,'linear');
    sc_vel_RTN_interp = [sc_vel_r_interp.',sc_vel_t_interp.',sc_vel_n_interp.'];
%% calculate LMN coordinate: eLMN, ratio21, ratio32
    % for MVA period
    fmva_beg_epoch = datenum([case_day(1:4),'-',case_day(5:6),'-',case_day(7:8),' ',fmva_beg_lst(i_case,:)]);
    fmva_end_epoch = datenum([case_day(1:4),'-',case_day(5:6),'-',case_day(7:8),' ',fmva_end_lst(i_case,:)]);
    % take MVA method
    [V,D,ratio21,ratio32] = get_LMN(Br,Bt,Bn,fld_epoch,fmva_beg_epoch,fmva_end_epoch);
    e_L = V(:,3); e_M = V(:,2); e_N = V(:,1);
    ratio21_lst(i_case) = ratio21;
%% convert into LMN coordinate: BLMN, VLMN
    % Bnml, BL, BM, BN
    Bnml_interp = Brtn_interp * V; 
    BL_interp = Bnml_interp(:,3);
    BM_interp = Bnml_interp(:,2);
    BN_interp = Bnml_interp(:,1);
    % Vnml_spc/spi, VL_spc/spi, VM_spc/spi, VN_spc/spi
    Vnml_interp = Vrtn_interp * V;
    VL_interp = Vnml_interp(:,3);
    VM_interp = Vnml_interp(:,2);
    VN_interp = Vnml_interp(:,1);
    % sc_vel_L_spc/spi, sc_vel_M_spc/spi, sc_vel_N_spc/spi
    sc_vel_NML_interp = sc_vel_RTN_interp * V;
    sc_vel_L_interp = sc_vel_NML_interp(:,3);
    sc_vel_M_interp = sc_vel_NML_interp(:,2);
    sc_vel_N_interp = sc_vel_NML_interp(:,1);
%% calculate plasma beta
    pth_interp = Np_interp .* kB .* Tp_interp .* eV2K .* 1e15; % unit: nPa
    pB_interp = B_mod_interp.^2 ./ 2 ./ mu0 .* 1e-9; % unit: nPa
    ptot_interp = pth_interp + pB_interp;
    beta_interp = pth_interp ./ pB_interp;
%% calculate Alfven speed: Va [km/s]
    Va_interp = B_mod_interp ./ sqrt(mu0 .* mp .* Np_interp) * 1e-15; % unit: km/s
%% calculate Alfven speed based on L component: VaL [km/s]
    VaL_interp = BL_interp.' ./ sqrt(mu0 .* mp .* Np_interp) * 1e-15; % unit: km/s
%% calculate normalized guide field: guide_norm
    guide_norm = abs(mean(BM_interp,'omitnan')) / max(abs(BL_interp));
    guide_norm_lst(i_case) = guide_norm;
%% extract leading/exhaust/trailing period
    % leading period
    lead_beg_epoch = datenum([case_day(1:4),'-',case_day(5:6),'-',case_day(7:8),' ',lead_beg_lst(i_case,:)]);
    lead_end_epoch = datenum([case_day(1:4),'-',case_day(5:6),'-',case_day(7:8),' ',lead_end_lst(i_case,:)]);
    lead_index = find(std_epoch >= lead_beg_epoch & std_epoch <= lead_end_epoch);
    lead_Epoch = std_epoch(lead_index);
    % exhaust period
    exht_beg_epoch = datenum([case_day(1:4),'-',case_day(5:6),'-',case_day(7:8),' ',exht_beg_lst(i_case,:)]);
    exht_end_epoch = datenum([case_day(1:4),'-',case_day(5:6),'-',case_day(7:8),' ',exht_end_lst(i_case,:)]);
    exht_index = find(std_epoch >= exht_beg_epoch & std_epoch <= exht_end_epoch);
    exht_Epoch = std_epoch(exht_index);
    % trailing period
    tral_beg_epoch = datenum([case_day(1:4),'-',case_day(5:6),'-',case_day(7:8),' ',tral_beg_lst(i_case,:)]);
    tral_end_epoch = datenum([case_day(1:4),'-',case_day(5:6),'-',case_day(7:8),' ',tral_end_lst(i_case,:)]);
    tral_index = find(std_epoch >= tral_beg_epoch & std_epoch <= tral_end_epoch);
    tral_Epoch = std_epoch(tral_index);
    % background period
    back_beg_epoch = datenum([case_day(1:4),'-',case_day(5:6),'-',case_day(7:8),' ',back_beg_lst(i_case,:)]);
    back_end_epoch = datenum([case_day(1:4),'-',case_day(5:6),'-',case_day(7:8),' ',back_end_lst(i_case,:)]);
    back_index = find(std_epoch >= back_beg_epoch & std_epoch <= back_end_epoch);
    back_Epoch = std_epoch(back_index);
%% plot overview: Brtn, Vrtn, BLMN, VLMN, PA, VN
    figure();
    LineWidth = 2;%1
    FontSize = 12;%7
    MarkSize = 50;
    left_base = 0.1;
    down_base = 0.08;
    width = 0.8;
    height = 0.12;
    
    subplot('position',[left_base,down_base+height*6,width,height]);
    plot(std_epoch,Br_interp,'r','LineWidth',LineWidth); hold on
    plot(std_epoch,Bt_interp,'g','LineWidth',LineWidth); hold on
    plot(std_epoch,Bn_interp,'b','LineWidth',LineWidth); hold on
    plot(std_epoch,B_mod_interp,'k','LineWidth',LineWidth); grid on
%     vertical_marks(lead_beg_epoch,lead_end_epoch,'--r')
    vertical_marks(exht_beg_epoch,exht_end_epoch,'-m')
%     vertical_marks(tral_beg_epoch,tral_end_epoch,'--b')
    vertical_marks(back_beg_epoch,back_end_epoch,'-k')
    ylabel('Brtn [nT]')
    xlim([std_epoch(1) std_epoch(end)]);
    datetick('x','HH:MM');
    set(gca,'xticklabel',[],'tickdir','in','LineWidth',LineWidth,'FontSize',FontSize);
    legend('B_r','B_t','B_n','|B|','Location','east','FontSize',FontSize)
    
%     subplot('position',[left_base,down_base+height*5,width,height]);
%     plot(std_epoch,Vr_interp-nanmean(Vr_interp),'r','LineWidth',LineWidth); hold on
%     plot(std_epoch,Vt_interp-nanmean(Vt_interp),'g','LineWidth',LineWidth); hold on
%     plot(std_epoch,Vn_interp-nanmean(Vn_interp),'b','LineWidth',LineWidth); grid on
%     ylabel('Vrtn [km/s]')
%     xlim([std_epoch(1) std_epoch(end)]);
%     datetick('x','HH:MM');
%     set(gca,'xticklabel',[],'tickdir','in','LineWidth',LineWidth,'FontSize',FontSize);
% %     legend('r','t','n','Location','east','FontSize',FontSize/1.5)
    
    subplot('position',[left_base,down_base+height*5,width,height]);
    plot(std_epoch,BL_interp,'r','LineWidth',LineWidth); hold on
    plot(std_epoch,BM_interp,'g','LineWidth',LineWidth); hold on
    plot(std_epoch,BN_interp,'b','LineWidth',LineWidth); grid on
%     vertical_marks(lead_beg_epoch,lead_end_epoch,'--r')
    vertical_marks(exht_beg_epoch,exht_end_epoch,'-m')
%     vertical_marks(tral_beg_epoch,tral_end_epoch,'--b')
    vertical_marks(back_beg_epoch,back_end_epoch,'-k')
    ylabel('B_{LMN} [nT]')
    xlim([std_epoch(1) std_epoch(end)]);
    datetick('x','HH:MM');
    set(gca,'xticklabel',[],'tickdir','in','LineWidth',LineWidth,'FontSize',FontSize);
    legend('B_L','B_M','B_N','Location','east','FontSize',FontSize)
    
    subplot('position',[left_base,down_base+height*4,width,height]);
    plot(std_epoch,VL_interp-mean(VL_interp,'omitnan'),'r','LineWidth',LineWidth); hold on
    plot(std_epoch,VM_interp-mean(VM_interp,'omitnan'),'g','LineWidth',LineWidth); hold on
    plot(std_epoch,VN_interp-mean(VN_interp,'omitnan'),'b','LineWidth',LineWidth); grid on
%     vertical_marks(lead_beg_epoch,lead_end_epoch,'--r')
    vertical_marks(exht_beg_epoch,exht_end_epoch,'-m')
%     vertical_marks(tral_beg_epoch,tral_end_epoch,'--b')
    vertical_marks(back_beg_epoch,back_end_epoch,'-k')
    ylabel('V_{LMN} [km/s]')
    xlim([std_epoch(1) std_epoch(end)]);
    datetick('x','HH:MM');
    set(gca,'xticklabel',[],'tickdir','in','LineWidth',LineWidth,'FontSize',FontSize);
    legend('V_L','V_M','V_N','Location','east','FontSize',FontSize)
    
%     subplot('position',[left_base,down_base+height*3,width,height]);
%     plot(std_epoch,pth_interp,'r','LineWidth',LineWidth); hold on
%     plot(std_epoch,pB_interp,'g','LineWidth',LineWidth); hold on
%     plot(std_epoch,ptot_interp,'b','LineWidth',LineWidth); grid on
%     ylabel('p [nPa]')
%     xlim([std_epoch(1) std_epoch(end)]);
%     datetick('x','HH:MM');
%     set(gca,'xticklabel',[],'tickdir','in','LineWidth',LineWidth,'FontSize',FontSize);
% %     legend('th','mag','tot','Location','east','FontSize',FontSize/1.5)
    
    subplot('position',[left_base,down_base+height*3,width,height]);
    plot(std_epoch,Np_interp,'k','LineWidth',LineWidth);
%     vertical_marks(lead_beg_epoch,lead_end_epoch,'--r')
    vertical_marks(exht_beg_epoch,exht_end_epoch,'-m')
%     vertical_marks(tral_beg_epoch,tral_end_epoch,'--b')
    vertical_marks(back_beg_epoch,back_end_epoch,'-k')
    ylabel('N_p [cm^{-3}]')
    xlim([std_epoch(1) std_epoch(end)]); grid on
    datetick('x','HH:MM');
    set(gca,'xticklabel',[],'tickdir','in','LineWidth',LineWidth,'FontSize',FontSize);
    
    subplot('position',[left_base,down_base+height*2,width,height]);
    plot(std_epoch,Tp_interp,'k','LineWidth',LineWidth);
%     vertical_marks(lead_beg_epoch,lead_end_epoch,'--r')
    vertical_marks(exht_beg_epoch,exht_end_epoch,'-m')
%     vertical_marks(tral_beg_epoch,tral_end_epoch,'--b')
    vertical_marks(back_beg_epoch,back_end_epoch,'-k')
    ylabel('Tp [eV]')
    xlim([std_epoch(1) std_epoch(end)]); grid on
    datetick('x','HH:MM');
    set(gca,'xticklabel',[],'tickdir','in','LineWidth',LineWidth,'FontSize',FontSize);
    
    subplot('position',[left_base,down_base+height*0,width,height]);
    plot(std_epoch,beta_interp,'k','LineWidth',LineWidth);
%     vertical_marks(lead_beg_epoch,lead_end_epoch,'--r')
    vertical_marks(exht_beg_epoch,exht_end_epoch,'-m')
%     vertical_marks(tral_beg_epoch,tral_end_epoch,'--b')
    vertical_marks(back_beg_epoch,back_end_epoch,'-k')
    ylabel('\beta')
    xlim([std_epoch(1) std_epoch(end)]); grid on
    datetick('x','HH:MM');
    set(gca,'yscale','log','tickdir','in','LineWidth',LineWidth,'FontSize',FontSize);
    
    subplot('position',[left_base,down_base+height*1,width,height]);
    spe_x = spe_epoch_plot; spe_y = PA_bins;
    [spe_X,spe_Y] = meshgrid(spe_x,spe_y);
    h = pcolor(spe_X,spe_Y,log10(PA_eflux_plot));
    set(h,'Linestyle','none');
%     vertical_marks(lead_beg_epoch,lead_end_epoch,'--r')
    vertical_marks(exht_beg_epoch,exht_end_epoch,'-m')
%     vertical_marks(tral_beg_epoch,tral_end_epoch,'--b')
    vertical_marks(back_beg_epoch,back_end_epoch,'-k')
%     ylabel('PA (norm)')
    ylabel({'314 eV';'e^- PA [deg.]'})
%     legend('314','Location','east')
    xlim([spe_epoch_plot(1) spe_epoch_plot(end)]);
    colormap jet; colorbar;
    set(gca,'xticklabel',[],'tickdir','in','LineWidth',LineWidth,'FontSize',FontSize);
    
%     subplot('position',[left_base,down_base+height*0,width,height]);
%     VN_pos = VN_interp - nanmean(VN_interp);
%     VN_pos(VN_pos<0) = 0;
%     VN_neg = VN_interp - nanmean(VN_interp);
%     VN_neg(VN_neg>0) = 0;
%     area(std_epoch,VN_pos,'FaceColor','r'); hold on;
%     area(std_epoch,VN_neg,'FaceColor','b'); grid on
%     ylabel('V_N [km/s]')
% %     legend('V_N^{>0}','V_N^{<0}','Location','east')
%     xlim([std_epoch(1) std_epoch(end)]);
%     datetick('x','HH:MM');
%     set(gca,'tickdir','in','LineWidth',LineWidth,'FontSize',FontSize);
    
    sgtitle(['PSP enounter ',num2str(case_enc_lst(i_case)),' ',case_day_lst(i_case,:),' (using ',Vdata_lst(i_case,:),')']);
    text(fld_epoch_plot(1),-230,stamp);
%% save overview
    if save_or_not == 1
        saveas(gcf,['E:\Research\Work\waves_in_exhaust_region\cases\Encounter ', ...
            num2str(case_enc_lst(i_case)),' ',case_day_lst(i_case,:),' ', ...
            plot_beg_lst(i_case,[1,2,4,5]),'-',plot_end_lst(i_case,[1,2,4,5]),'.png']);
    end
%% extract relative properties (BLMN,VLMN,Np,Tp,beta) of leading/exhaust/trailing period
    % magnetic components: BL,BM,BN
    BL_lead = BL_interp(lead_index); BL_lead_mean = mean(BL_lead,'omitnan');
    BL_exht = BL_interp(exht_index); BL_exht_mean = mean(BL_exht,'omitnan');
    BL_tral = BL_interp(tral_index); BL_tral_mean = mean(BL_tral,'omitnan');
    BM_lead = BM_interp(lead_index); BM_lead_mean = mean(BM_lead,'omitnan');
    BM_exht = BM_interp(exht_index); BM_exht_mean = mean(BM_exht,'omitnan');
    BM_tral = BM_interp(tral_index); BM_tral_mean = mean(BM_tral,'omitnan');
    BN_lead = BN_interp(lead_index); BN_lead_mean = mean(BN_lead,'omitnan');
    BN_exht = BN_interp(exht_index); BN_exht_mean = mean(BN_exht,'omitnan');
    BN_tral = BN_interp(tral_index); BN_tral_mean = mean(BN_tral,'omitnan');
    % velocity components: VL,VM,VN
    VL_lead = VL_interp(lead_index); VL_lead_mean = mean(VL_lead,'omitnan');
    VL_exht = VL_interp(exht_index); VL_exht_mean = mean(VL_exht,'omitnan');
    VL_tral = VL_interp(tral_index); VL_tral_mean = mean(VL_tral,'omitnan');
    VM_lead = VM_interp(lead_index); VM_lead_mean = mean(VM_lead,'omitnan');
    VM_exht = VM_interp(exht_index); VM_exht_mean = mean(VM_exht,'omitnan');
    VM_tral = VM_interp(tral_index); VM_tral_mean = mean(VM_tral,'omitnan');
    VN_lead = VN_interp(lead_index); VN_lead_mean = mean(VN_lead,'omitnan');
    VN_exht = VN_interp(exht_index); VN_exht_mean = mean(VN_exht,'omitnan');
    VN_tral = VN_interp(tral_index); VN_tral_mean = mean(VN_tral,'omitnan');
    % ion density: Np
    Np_lead = Np_interp(lead_index); Np_lead_mean = mean(Np_lead,'omitnan');
    Np_exht = Np_interp(exht_index); Np_exht_mean = mean(Np_exht,'omitnan');
    Np_tral = Np_interp(tral_index); Np_tral_mean = mean(Np_tral,'omitnan');
    % ion temperature: Tp
    Tp_lead = Tp_interp(lead_index); Tp_lead_mean = mean(Tp_lead,'omitnan');
    Tp_exht = Tp_interp(exht_index); Tp_exht_mean = mean(Tp_exht,'omitnan');
    Tp_tral = Tp_interp(tral_index); Tp_tral_mean = mean(Tp_tral,'omitnan');
    % plasma beta: beta
    beta_lead = beta_interp(lead_index); beta_lead_mean = mean(beta_lead,'omitnan');
    beta_exht = beta_interp(exht_index); beta_exht_mean = mean(beta_exht,'omitnan');
    beta_tral = beta_interp(tral_index); beta_tral_mean = mean(beta_tral,'omitnan');
    % Alfven speed: Va
    Va_lead = Va_interp(lead_index); Va_lead_mean = mean(Va_lead,'omitnan');
    Va_exht = Va_interp(exht_index); Va_exht_mean = mean(Va_exht,'omitnan');
    Va_tral = Va_interp(tral_index); Va_tral_mean = mean(Va_tral,'omitnan');
%% calculate distance from the Sun: dist [Rs]
    dist = mean(sc_pos_dist_plot);
    dist_lst(i_case) = dist / Rs; % [Rs]
%% calculate plasma beta: beta
    beta_lead_lst(i_case) = beta_lead_mean;
    beta_tral_lst(i_case) = beta_tral_mean;
    beta_exht_lst(i_case) = beta_exht_mean;
%% calculate ion heating: delta_Tp [eV], V_exht[km/s]
    V_exht = VL_exht_mean - mean([VL_lead_mean,VL_tral_mean]);
    V_exht_lst(i_case) = V_exht;
%% calculate asymmetric Alfven speed: VaL [km/s]
    VaL_asy = sqrt(BL_lead_mean * BL_tral_mean * (BL_lead_mean + BL_tral_mean) / mu0 ...
        / (Np_lead_mean * mp * BL_tral_mean + Np_tral_mean * mp * BL_lead_mean)) * 1e-15;
    VaL_asy_lst(i_case) = VaL_asy; % [km/s]
%% calculate reconnection rate: Mr
    % inflow speed
    V_inflow = abs((VN_tral_mean-VN_lead_mean)) / 2;
    V_inflow_lst(i_case) = V_inflow; % [km/s]
    % Alfven speed in the inflow region
    Va_infw = mean([Va_lead_mean,Va_tral_mean]);
    Va_infw_lst(i_case) = Va_infw; % [km/s]
%% calculate shear velocity base on L component: VL_shear [km/s]
    % shear velocity
    VL_shear = abs(VL_tral_mean - VL_lead_mean);
    VL_shear_lst(i_case) = VL_shear;
    % Alfven speed based on L component
    VaL_lead = VaL_interp(lead_index); VaL_lead_mean = mean(VaL_lead,'omitnan');
    VaL_exht = VaL_interp(exht_index); VaL_exht_mean = mean(VaL_exht,'omitnan');
    VaL_tral = VaL_interp(tral_index); VaL_tral_mean = mean(VaL_tral,'omitnan');
    delta_VaL = abs(VaL_lead_mean - VaL_tral_mean);
    delta_VaL_lst(i_case) = delta_VaL;
%% calculate shear angle: SA [deg.]
    % vector and magnitude of magnetic field
    Blmn_lead = [BL_lead_mean,BM_lead_mean,BN_lead_mean];
    Blmn_exht = [BL_exht_mean,BM_exht_mean,BN_exht_mean];
    Blmn_tral = [BL_tral_mean,BM_tral_mean,BN_tral_mean];
    B_mod_lead = sqrt(BL_lead_mean^2 + BM_lead_mean^2 + BN_lead_mean^2);
    B_mod_exht = sqrt(BL_exht_mean^2 + BM_exht_mean^2 + BN_exht_mean^2);
    B_mod_tral = sqrt(BL_tral_mean^2 + BM_tral_mean^2 + BN_tral_mean^2);
    % shear angle
%     SA = acosd(dot(Blmn_lead,Blmn_tral)/B_mod_lead/B_mod_tral);
    SA = 2 * atand(abs((BL_lead_mean - BL_tral_mean) / 2 / mean([BM_lead_mean,BM_tral_mean])));
    SA_lst(i_case) = SA; % [deg.]
%% calculate current sheet thickness: Lcs [km]
    Lcs_index = find(std_epoch>=lead_end_epoch & std_epoch<=tral_beg_epoch);
    Lcs = abs(sum(sc_vel_N_interp(exht_index) - VN_interp(exht_index)).* dTime);
    Lcs_lst(i_case) = Lcs;
%% calculate ionic inertia length: di [km]
    % ion frequency
    w_pi_lead = sqrt(Np_lead_mean * e^2 / mu0 / mp * 1e6); % [/s]
    w_pi_tral = sqrt(Np_tral_mean * e^2 / mu0 / mp * 1e6); % [/s]
    % ionic inertia length
    di = mean([cL / w_pi_lead, cL / w_pi_tral]); % [km]
    di_lst(i_case) = di;
%% calculate ion heating: Tp_infw, Tp_exht [eV]
    % Tp_infw
    Tp_infw = (Np_lead_mean * Tp_lead_mean / BL_lead_mean + Np_tral_mean * Tp_tral_mean / BL_tral_mean) ...
        / (Np_lead_mean / BL_lead_mean + Np_tral_mean / BL_tral_mean);
    Tp_infw_lst(i_case) = Tp_infw; % [eV]
    % Ti_exht
    Tp_exht = mean(Np_exht .* Tp_exht,'omitnan') / Np_exht_mean;
    Tp_exht_lst(i_case) = Tp_exht; % [eV]
end
%% secondary properties
% reconnection rate
Mr_lst = V_inflow_lst / Va_infw_lst;
% plasma beta in inflow region
beta_infw_lst = mean([beta_lead_lst,beta_tral_lst],2);
% ion temperature increasement
delta_Tp_lst = Tp_exht_lst - Tp_infw_lst; % [eV]
% shreshold of length of pressure gradient: Lp (based on beta-shear criterion)
beta_delta_lst = abs(beta_lead_lst - beta_tral_lst);
Lp_thres = beta_delta_lst .* di_lst ./ 2 ./ tand(SA_lst ./ 2); % [km]
%%

%% plot histogram: Mr
% figure();
% Mr_bin = 0.05;
% Mr_edges = (0:1:ceil(max(Mr_lst)/Mr_bin)) * Mr_bin;
% 
% histogram(Mr_lst,Mr_edges);
% xlabel('Reconnection Rate');
% ylabel('Count');
% xlim([0 ceil(max(Mr_lst)/Mr_bin)*Mr_bin]);
% title('Distribution of Reconnection Rate')
% set(gca,'LineWidth',LineWidth,'FontSize',FontSize*2);
%% plot histogram: SA
% figure();
% SA_bin = 20;
% SA_edges = (floor(min(SA_lst)/SA_bin):1:ceil(max(SA_lst)/SA_bin)) * SA_bin;
% 
% histogram(SA_lst,SA_edges);
% xlabel('Shear Angle [deg.]');
% ylabel('Count');
% xlim([floor(min(SA_lst)/SA_bin)*SA_bin ceil(max(SA_lst)/SA_bin)*SA_bin]);
% title('Distribution of Shear Angle')
% set(gca,'LineWidth',LineWidth,'FontSize',FontSize*2);
%% plot histogram: beta_infw, beta_exht
% figure();
% beta_infw_bin = 5;
% beta_infw_edges = (0:1:ceil(max(beta_infw_lst)/beta_infw_bin)) * beta_infw_bin;
% beta_exht_bin = 20;
% beta_exht_edges = (0:1:ceil(max(beta_exht_lst)/beta_exht_bin)) * beta_exht_bin;
% 
% subplot(1,2,1)
% histogram(beta_infw_lst,beta_infw_edges);
% xlabel('Plasma \beta');
% ylabel('Count');
% xlim([0 ceil(max(beta_infw_lst)/beta_infw_bin)*beta_infw_bin]);
% title('Distribution of \beta in Inflow Region')
% 
% subplot(1,2,2)
% histogram(beta_exht_lst,beta_exht_edges);
% xlabel('Plasma \beta');
% ylabel('Count');
% xlim([0 ceil(max(beta_exht_lst)/beta_exht_bin)*beta_exht_bin]);
% title('Distribution of \beta in Exhaust Region')
% set(gca,'LineWidth',LineWidth,'FontSize',FontSize*1.5);
%% plot plasma beta: beta_infw, beta_exht
% figure();
% 
% scatter(case_lst,beta_infw_lst,MarkSize,'r','filled'); hold on
% scatter(case_lst,beta_exht_lst,MarkSize,'b','filled'); grid on
% xlabel('Case Index');
% ylabel('Plasma \beta');
% legend('inflow region','exhaust region','Location','best');
% set(gca,'LineWidth',LineWidth,'FontSize',FontSize*2);
%% examine beta-shear criterion
% figure();
% % curve of threshold
% LpOVERdi_num = 3;
% LpOVERdi_lst = [1,5,10];
% SA_thres = 0 : 2 : 180;
% for i_LpOVERdi = 1 : LpOVERdi_num
%     beta_delta_thres = 2 .* LpOVERdi_lst(i_LpOVERdi) .* tand(SA_thres./2);
%     plot(beta_delta_thres,SA_thres,'-','LineWidth',LineWidth*2); hold on
% end
% % scatter of data
% beta_delta_lst = abs(beta_lead_lst - beta_tral_lst);
% scatter(beta_delta_lst,SA_lst,MarkSize,case_lst,'filled'); grid on
% xlabel('\Delta\beta');
% ylabel('\Delta\theta');
% legend(['L_p/d_i=',num2str(LpOVERdi_lst(1))],['L_p/d_i=',num2str(LpOVERdi_lst(2))],['L_p/d_i=',num2str(LpOVERdi_lst(3))],'case','threshold','Location','best');
% title('Examine Beta-Shear Criterion [\Delta\beta > 2*L_p/d_i*tan(\Delta\theta/2)]');
% set(gca,'xscale','log','LineWidth',LineWidth*2,'FontSize',FontSize*1.5);
%% plot distribution: Mr,SA-dist
% figure();
% % MarkColor = 1 : 1 : num_case;
% 
% yyaxis left
% scatter(dist_lst,Mr_lst,MarkSize,'r','filled'); hold on
% ylabel('Reconnection Rate')
% yyaxis right
% scatter(dist_lst,SA_lst,MarkSize,'b','filled');
% ylabel('Shear Angle [deg.]');
% 
% xlabel('Distance [Rs]')
% title('Realtionship between M_R,SA and r_S')
% set(gca,'LineWidth',LineWidth,'FontSize',FontSize*2);
%%

%% fuctions
function [x_RTN,y_RTN,z_RTN] = calc_HCI2SCRTN(x_HCI,y_HCI,z_HCI,SC_HCIx,SC_HCIy,SC_HCIz)
% Change the coordiantes xyz in HCI frame to xyz in spacecraft RTN frame
%   input: x_HCI, y_HCI, z_HCI, the velocity in HCI frame (km/s)
%          SC_HCIx, SC_HCIy, SC_HCIz, the sapcecraft position in HCI frame (km)
%   output: x_RTN, y_RTN, z_RTN,the velocity in SC RTN frame (km/s)
% This function does not consider the move of the origin (using for velocity conversion)
    num = length(x_HCI);
    xyz_RTN = zeros(num,3);
    for i = 1:num
        Q = zeros(3,3);
        x1 = [1 0 0];
        y1 = [0 1 0];
        z1 = [0 0 1];
        x2 = [SC_HCIx(i),SC_HCIy(i),SC_HCIz(i)];
        if norm(x2)~= 0
            x2 = x2/norm(x2);
        end
        y2 = cross(z1,x2);
        if norm(y2)~= 0
            y2 = y2/norm(y2);
        end
        z2 = cross(x2,y2);
        if norm(z2)~= 0
            z2 = z2/norm(z2);
        end
        Q(1,1) = dot(x2,x1); Q(1,2) = dot(x2,y1); Q(1,3) = dot(x2,z1);
        Q(2,1) = dot(y2,x1); Q(2,2) = dot(y2,y1); Q(2,3) = dot(y2,z1);
        Q(3,1) = dot(z2,x1); Q(3,2) = dot(z2,y1); Q(3,3) = dot(z2,z1);
        xyz_RTN(i,:) = Q*[x_HCI(i);y_HCI(i);z_HCI(i)];
    end
    x_RTN = xyz_RTN(:,1); y_RTN = xyz_RTN(:,2); z_RTN = xyz_RTN(:,3);
end
function [array_good] = rid_gf_ne_0(general_flag,epoch,array)
% Get rid of spc data points of general_flag ~= 0
%   input: general_flag, variable 'general_flag' from spc file
%          epoch, variable 'Epoch' from spc file
%          array, any variable array from spc file
%   output: array_good, variable array after eliminating points of general_flag ~= 0
% Points of general_flag ~= 0 are replaced by interpolation
    bad = find(general_flag ~= 0);
    bad_ad = find(isnan(array));
    epoch_good = epoch;
    epoch_good([bad;bad_ad]) = [];
    array_good = array;
    array_good([bad;bad_ad]) = [];
    if isempty(array_good) == 0
        array_good = interp1(epoch_good,array_good,epoch)';
    end
end
function [V,D,ratio21,ratio32] = get_LMN(Br,Bt,Bn,fld_epoch,fmva_beg_epoch,fmva_end_epoch)
% Calculate LMN coordinate
    fmva_index = find(fld_epoch >= fmva_beg_epoch & fld_epoch <= fmva_end_epoch);
    Br_calc = Br(fmva_index); Br_calc(isnan(Br_calc)) = mean(Br_calc,'omitnan');
    Bt_calc = Bt(fmva_index); Bt_calc(isnan(Bt_calc)) = mean(Bt_calc,'omitnan');
    Bn_calc = Bn(fmva_index); Bn_calc(isnan(Bn_calc)) = mean(Bn_calc,'omitnan');
    M = [mean(Br_calc.*Br_calc)-mean(Br_calc)*mean(Br_calc), mean(Br_calc.*Bt_calc)-mean(Br_calc)*mean(Bt_calc), mean(Br_calc.*Bn_calc)-mean(Br_calc)*mean(Bn_calc);
         mean(Bt_calc.*Br_calc)-mean(Bt_calc)*mean(Br_calc), mean(Bt_calc.*Bt_calc)-mean(Bt_calc)*mean(Bt_calc), mean(Bt_calc.*Bn_calc)-mean(Bt_calc)*mean(Bn_calc);
         mean(Bn_calc.*Br_calc)-mean(Bn_calc)*mean(Br_calc), mean(Bn_calc.*Bt_calc)-mean(Bn_calc)*mean(Bt_calc), mean(Bn_calc.*Bn_calc)-mean(Bn_calc)*mean(Bn_calc)];
    % order of base vectors in V: N, M, L
    [V, D] = eig(M);
    % eigenvalues (lambda1 < lambda2 < lambda3)
    lambda1 = D(1,1);
    lambda2 = D(2,2);
    lambda3 = D(3,3);
    % ratio of eigenvalues
    ratio21 = lambda2 / lambda1; % ratio21 usually should be limited
    ratio32 = lambda3 / lambda2;
end
function vertical_marks(mark_beg,mark_end,linestyle)
% Plot vertical lines
    LineWidth = 4;%2
    hold on;
    xline(mark_beg,linestyle,'LineWidth',LineWidth); hold on;
    xline(mark_end,linestyle,'LineWidth',LineWidth); hold on;
end