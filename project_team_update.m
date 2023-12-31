classdef project_team_update < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        ConBoCon                       matlab.ui.Figure
        FileMenu                       matlab.ui.container.Menu
        HomeMenu                       matlab.ui.container.Menu
        Menu                           matlab.ui.container.Menu
        TabGroup                       matlab.ui.container.TabGroup
        nghiemTab                      matlab.ui.container.Tab
        nhapHamLapLabel                matlab.ui.control.Label
        TnhButton                      matlab.ui.control.Button
        nhapHamLap                     matlab.ui.control.EditField
        nhapHamSoTimNghiem             matlab.ui.control.EditField
        NhphmsfxLabel                  matlab.ui.control.Label
        nhapSaiSoTimNghiem             matlab.ui.control.EditField
        NhpSaiSLabel                   matlab.ui.control.Label
        nhapKhoangPhanLyNghiem         matlab.ui.control.EditField
        KhongphnlynghimLabel           matlab.ui.control.Label
        chonPPNghiem                   matlab.ui.container.ButtonGroup
        togglebutton_tab1              matlab.ui.control.ToggleButton
        timNgiemTiepTuyenButton        matlab.ui.control.ToggleButton
        timNghiemLapButton             matlab.ui.control.ToggleButton
        timNghiemChiaDoiButton         matlab.ui.control.ToggleButton
        kqSoLanLap                     matlab.ui.control.TextArea
        SLnLpTextAreaLabel             matlab.ui.control.Label
        kqNghiem                       matlab.ui.control.TextArea
        NghimCaPhngTrnhTextAreaLabel   matlab.ui.control.Label
        doThiHSNghiem                  matlab.ui.control.UIAxes
        noiSuyTab                      matlab.ui.container.Tab
        kqDaThucNoiSuy                 matlab.ui.control.TextArea
        KtquathcnisuyLabel             matlab.ui.control.Label
        KtqunisuyLabel                 matlab.ui.control.Label
        kqNoiSuy                       matlab.ui.control.TextArea
        giaTriNoiSuy                   matlab.ui.control.EditField
        NhpgitrnisuyLabel              matlab.ui.control.Label
        chonPPNoiSuy                   matlab.ui.container.ButtonGroup
        togglebutton_tab2              matlab.ui.control.ToggleButton
        noiSuyNewton                   matlab.ui.control.ToggleButton
        noiSuyLarange                  matlab.ui.control.ToggleButton
        nhapYNoiSuy                    matlab.ui.control.EditField
        NhpDLiuyLabel                  matlab.ui.control.Label
        nhapXNoiSuy                    matlab.ui.control.EditField
        NhpDLiuxLabel                  matlab.ui.control.Label
        doThiHSNoiSuy                  matlab.ui.control.UIAxes
        hoiQuyTab                      matlab.ui.container.Tab
        KtquphngtrnhhiquyLabel         matlab.ui.control.Label
        kqPTHoiQuy                     matlab.ui.control.TextArea
        chonPPHoiQuy                   matlab.ui.container.ButtonGroup
        togglebutton_tab3              matlab.ui.control.ToggleButton
        hoiQuyHamMux                   matlab.ui.control.ToggleButton
        hoiQuyHamMue                   matlab.ui.control.ToggleButton
        hoiQuyTuyenTinh                matlab.ui.control.ToggleButton
        nhapYHoiQuy                    matlab.ui.control.EditField
        NhpdliuyEditFieldLabel         matlab.ui.control.Label
        nhapXHoiQuy                    matlab.ui.control.EditField
        NhpdliuxEditFieldLabel         matlab.ui.control.Label
        kqHoiQuy                       matlab.ui.control.TextArea
        KtqudonLabel                   matlab.ui.control.Label
        nhapGiaTriHoiQuy               matlab.ui.control.EditField
        NhpgitrdonLabel                matlab.ui.control.Label
        doThiHSHoiQuy                  matlab.ui.control.UIAxes
        daoHamTab                      matlab.ui.container.Tab
        nhapBuocHDaoHam                matlab.ui.control.EditField
        NhpbctnhhLabel_2               matlab.ui.control.Label
        nhapGiatriDaoHam               matlab.ui.control.EditField
        NhpgitrohmLabel                matlab.ui.control.Label
        chonPPDaoHamButtonGroup        matlab.ui.container.ButtonGroup
        togglebutton_tab4              matlab.ui.control.ToggleButton
        xapXiTrungTam                  matlab.ui.control.ToggleButton
        xapXiLui                       matlab.ui.control.ToggleButton
        xapXiTien                      matlab.ui.control.ToggleButton
        kqDaoHam                       matlab.ui.control.TextArea
        KtquohmLabel                   matlab.ui.control.Label
        chonSaiSoDaoHamDropDown        matlab.ui.control.DropDown
        ChngitrsaisDropDownLabel       matlab.ui.control.Label
        chonDuLieuDaoHamButtonGroup    matlab.ui.container.ButtonGroup
        nhapHamSoDaoHam                matlab.ui.control.EditField
        NhpHmSLabel                    matlab.ui.control.Label
        chonDuLieuDaoHam               matlab.ui.control.DropDown
        ChndliuvoLabel                 matlab.ui.control.Label
        nhapYDaoHam                    matlab.ui.control.EditField
        NhpdliuyEditFieldLabel_3       matlab.ui.control.Label
        nhapXDaoHam                    matlab.ui.control.EditField
        NhpdliuxEditFieldLabel_3       matlab.ui.control.Label
        tichPhanTab                    matlab.ui.container.Tab
        nhapNTichPhan                  matlab.ui.control.EditField
        NhpsonNLabel_2                 matlab.ui.control.Label
        nhapCanDuoiTichPhan            matlab.ui.control.EditField
        NhpcndiLabel_2                 matlab.ui.control.Label
        nhapCanTrenTichPhan            matlab.ui.control.EditField
        NhpcntrnEditFieldLabel         matlab.ui.control.Label
        chonPPTichPhan                 matlab.ui.container.ButtonGroup
        togglebutton_tab5              matlab.ui.control.ToggleButton
        simpSon38                      matlab.ui.control.ToggleButton
        simpSon13                      matlab.ui.control.ToggleButton
        hinhThang                      matlab.ui.control.ToggleButton
        kqTichPhan                     matlab.ui.control.TextArea
        KtqutchphnLabel                matlab.ui.control.Label
        chonDuLieuTichPhanButtonGroup  matlab.ui.container.ButtonGroup
        nhapHamSoTichPhan              matlab.ui.control.EditField
        NhpHmSLabel_2                  matlab.ui.control.Label
        chonDuLieuTichPhan             matlab.ui.control.DropDown
        ChndliuvoLabel_2               matlab.ui.control.Label
        nhapYTichPhan                  matlab.ui.control.EditField
        NhpdliuyEditFieldLabel_4       matlab.ui.control.Label
        nhapXTichPhan                  matlab.ui.control.EditField
        NhpdliuxEditFieldLabel_4       matlab.ui.control.Label
        GioiThieuNhomTab               matlab.ui.container.Tab
        NGUYNMINHVNGLabel              matlab.ui.control.Label
        Label_11                       matlab.ui.control.Label
        Label_6                        matlab.ui.control.Label
        NGUYNTHTHYQUNHLabel            matlab.ui.control.Label
        Label_10                       matlab.ui.control.Label
        Label_5                        matlab.ui.control.Label
        CAOVNNAMLabel                  matlab.ui.control.Label
        Label_9                        matlab.ui.control.Label
        Label_4                        matlab.ui.control.Label
        LCDUYLabel                     matlab.ui.control.Label
        Label_8                        matlab.ui.control.Label
        Label_3                        matlab.ui.control.Label
        NGUYNTRNANHTLabel              matlab.ui.control.Label
        Label_7                        matlab.ui.control.Label
        Label_2                        matlab.ui.control.Label
        HVTNLabel                      matlab.ui.control.Label
        MSSINHVINLabel                 matlab.ui.control.Label
        STTLabel                       matlab.ui.control.Label
        NHMFFFFFF10Label               matlab.ui.control.Label
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Selection changed function: chonPPNoiSuy
        function chonPPNoiSuySelectionChanged(app, event)
        chon = app.chonPPNoiSuy.SelectedObject;
  	    if isempty(app.nhapXNoiSuy.Value) || (numel(str2num(app.nhapXNoiSuy.Value)) < 2)
     	    msgbox('Vui lòng nhập x từ 2 giá trị trở lên', 'Lỗi', 'error');
            app.togglebutton_tab2.Value = true;
         	return;
        end
        x = app.nhapXNoiSuy.Value;
        x = str2num(x); %  gia tri x
        if isempty(app.nhapYNoiSuy.Value) || (numel(str2num(app.nhapYNoiSuy.Value)) < 2)
     	    msgbox('Vui lòng nhập y từ 2 giá trị trở lên', 'Lỗi', 'error');
            app.togglebutton_tab2.Value = true;
         	return;
    	end
        y = app.nhapYNoiSuy.Value;
        y = str2num(y); % gia tri y
        if isempty(app.giaTriNoiSuy.Value)
     	    msgbox('Vui lòng nhập giá trị nội suy', 'Lỗi', 'error');
            app.togglebutton_tab2.Value = true;
         	return;
    	end
        xNoiSuy = app.giaTriNoiSuy.Value;
        xNoiSuy = str2num(xNoiSuy);
        syms X;
        if chon == app.noiSuyLarange
            kq = lagrange(x,y,xNoiSuy);
            f = lagrange(x,y,X);
            f = expand(symfun(f,X)); % phan tich ham f 
            fx = vpa(simplify(f),5); % rut gon
            app.togglebutton_tab2.Value = true;
            app.noiSuyLarange.BackgroundColor = [0.30,0.75,0.93];
            app.noiSuyNewton.BackgroundColor = [0.96,0.96,0.96];
        elseif chon == app.noiSuyNewton
            kq = NewtonInterpolation(x,y,xNoiSuy);
            f = NewtonInterpolation(x,y,X);
            f = expand(symfun(f,X)); 
            fx =vpa(simplify(f),5);
            app.togglebutton_tab2.Value = true;
            app.noiSuyLarange.BackgroundColor = [0.96,0.96,0.96];
            app.noiSuyNewton.BackgroundColor = [0.30,0.75,0.93];
        end
        app.kqNoiSuy.Value = num2str(kq);
        app.kqDaThucNoiSuy.Value = char(fx);
        plot(app.doThiHSNoiSuy,x,y,'b',x(1):0.01:x(end),fx(x(1):0.01:x(end)),'g',xNoiSuy,fx(xNoiSuy),'r*');
        legend(app.doThiHSNoiSuy, 'dữ liệu thực','đa thức nội suy', 'giá trị nội suy');
        app.doThiHSNoiSuy.XGrid = 'on';
        app.doThiHSNoiSuy.YGrid = 'on';
        end

        % Callback function
        function ButtonGroupSelectionChanged(app, event)

        end

        % Selection changed function: chonPPNghiem
        function chonPPNghiemSelectionChanged(app, event)
        PP = app.chonPPNghiem.SelectedObject;
        
         if PP == app.timNghiemChiaDoiButton
            app.timNghiemChiaDoiButton.BackgroundColor = [0.30,0.75,0.93];
            app.timNghiemLapButton.BackgroundColor = [0.96,0.96,0.96];
            app.timNgiemTiepTuyenButton.BackgroundColor = [0.96,0.96,0.96];
         end
        if (PP == app.timNghiemLapButton)
           
           app.timNghiemLapButton.BackgroundColor = [0.30,0.75,0.93]
           app.timNghiemChiaDoiButton.BackgroundColor = [0.96,0.96,0.96];
           app.timNgiemTiepTuyenButton.BackgroundColor = [0.96,0.96,0.96];
            app.nhapHamLap.Enable = 'on';
            app.nhapHamLapLabel.Enable='on';
           
        else
            app.nhapHamLap.Enable = 'off';
            app.nhapHamLapLabel.Enable = 'off';
        end
        if PP == app.timNgiemTiepTuyenButton
           app.timNgiemTiepTuyenButton.BackgroundColor = [0.30,0.75,0.93];
           app.timNghiemChiaDoiButton.BackgroundColor = [0.96,0.96,0.96];
           app.timNghiemLapButton.BackgroundColor = [0.96,0.96,0.96];
        end
        end

        % Selection changed function: chonPPHoiQuy
        function chonPPHoiQuySelectionChanged(app, event)
            chon = app.chonPPHoiQuy.SelectedObject;
            xa = str2num(app.nhapXHoiQuy.Value);
            ya = str2num(app.nhapYHoiQuy.Value);
            gtx = str2num(app.nhapGiaTriHoiQuy.Value);
            if chon == app.hoiQuyTuyenTinh
                app.hoiQuyTuyenTinh.BackgroundColor = [0.30,0.75,0.93];
                app.hoiQuyHamMue.BackgroundColor = [0.96,0.96,0.96];
                app.hoiQuyHamMux.BackgroundColor = [0.96,0.96,0.96];
                [a1,a0,r2,ketquadudoan] = hoiquygiaodien(xa,ya,gtx);
                [a1,a0,r2,mangketquadudoan] = hoiquygiaodien(xa,ya,xa);
                if a1 < 0
                    a = abs(a1)
                    phuongtrinh = [num2str(a0),' - ',num2str(a),'*x'];
                else
                    phuongtrinh = [num2str(a0),' + ',num2str(a1),'*x'];
                end
                app.kqPTHoiQuy.Value = phuongtrinh;
                app.kqHoiQuy.Value = num2str(ketquadudoan);
                plot(app.doThiHSHoiQuy,xa,ya,'o',xa,mangketquadudoan,'g',gtx,ketquadudoan,'r*');
                legend(app.doThiHSHoiQuy, 'dữ liệu thực','hàm số hồi quy','giá trị hồi quy');
                app.doThiHSHoiQuy.XGrid = 'on';
                app.doThiHSHoiQuy.YGrid = 'on';
                app.togglebutton_tab3.Value = true;
            elseif chon == app.hoiQuyHamMue
                app.hoiQuyHamMue.BackgroundColor = [0.30,0.75,0.93];
                app.hoiQuyTuyenTinh.BackgroundColor = [0.96,0.96,0.96];
                app.hoiQuyHamMux.BackgroundColor = [0.96,0.96,0.96];
                [a1,a0,r2,ketquadudoan] = Hoiquyhammue(xa,ya,gtx);
                [a1,a0,r2,mangketquadudoan] = Hoiquyhammue(xa,ya,xa);
                phuongtrinh = [num2str(a0),' * e^(',num2str(a1),'*x)'];
                app.kqPTHoiQuy.Value = phuongtrinh;
                app.kqHoiQuy.Value = num2str(ketquadudoan);
                plot(app.doThiHSHoiQuy,xa,ya,'o',xa,mangketquadudoan,'g',gtx,ketquadudoan,'r*');
                legend(app.doThiHSHoiQuy, 'dữ liệu thực','hàm số hồi quy','giá trị hồi quy');
                app.doThiHSHoiQuy.XGrid = 'on';
                app.doThiHSHoiQuy.YGrid = 'on';
                app.togglebutton_tab3.Value = true;
            elseif chon == app.hoiQuyHamMux
                app.hoiQuyHamMux.BackgroundColor = [0.30,0.75,0.93];
                app.hoiQuyHamMue.BackgroundColor = [0.96,0.96,0.96];
                app.hoiQuyTuyenTinh.BackgroundColor = [0.96,0.96,0.96];
                [a1,a0,r2,ketquadudoan] = Hoiquyhammux(xa,ya,gtx);
                [a1,a0,r2,mangketquadudoan] = Hoiquyhammux(xa,ya,xa);
                phuongtrinh = [num2str(a0),'*','x^',num2str(a1)];
                app.kqPTHoiQuy.Value = phuongtrinh;
                app.kqHoiQuy.Value = num2str(ketquadudoan);
                plot(app.doThiHSHoiQuy,xa,ya,'o',xa,mangketquadudoan,'g',gtx,ketquadudoan,'r*');
                legend(app.doThiHSHoiQuy, 'dữ liệu thực','hàm số hồi quy','giá trị hồi quy');
                app.doThiHSHoiQuy.XGrid = 'on';
                app.doThiHSHoiQuy.YGrid = 'on';
                app.togglebutton_tab3.Value = true;
            end
        end

        % Selection changed function: chonDuLieuDaoHamButtonGroup
        function chonDuLieuDaoHamButtonGroupSelectionChanged(app, event)
            selectedButton = app.chonDuLieuDaoHamButtonGroup.SelectedObject;
            
        end

        % Value changed function: chonDuLieuDaoHam
        function chonDuLieuDaoHamValueChanged(app, event)
            chonPP = app.chonDuLieuDaoHam.Value;
            if chonPP == "Dữ liệu x,y" 
                app.nhapXDaoHam.Enable = "on";
                app.nhapYDaoHam.Enable = "on";
                app.nhapHamSoDaoHam.Enable = "off";
                app.nhapBuocHDaoHam.Enable = "off";
            else
                app.nhapXDaoHam.Enable = "off";
                app.nhapYDaoHam.Enable = "off";
                app.nhapHamSoDaoHam.Enable = "on";
                app.nhapBuocHDaoHam.Enable = "on";
            end
        end

        % Selection changed function: chonPPDaoHamButtonGroup
        function chonPPDaoHamButtonGroupSelectionChanged(app, event)
            chonPPDH = app.chonPPDaoHamButtonGroup.SelectedObject;

%========================== Xấp Xỉ Theo Xa, Ya =========================

            if app.nhapBuocHDaoHam.Enable == "off"
                xa = str2num(app.nhapXDaoHam.Value);
                ya = str2num(app.nhapYDaoHam.Value);
                giatrix = str2num(app.nhapGiatriDaoHam.Value);
                
%----------------- Xấp Xỉ Tiến --------------------

                switch chonPPDH
                    case app.xapXiTien
                        app.xapXiTien.BackgroundColor = [0.30,0.75,0.93];
                        app.xapXiLui.BackgroundColor = [0.96,0.96,0.96];
                        app.xapXiTrungTam.BackgroundColor = [0.96,0.96,0.96];
                        switch app.chonSaiSoDaoHamDropDown.Value 
                            case "O(h)"
                                kq = ppXapXiTien_Oh(xa, ya, giatrix);
                            case "O(h^2)"
                                kq = ppXapXiTien_Oh2(xa, ya, giatrix);
                        end
                    app.kqDaoHam.Value = num2str(kq);
                    app.togglebutton_tab4.Value = true;
%----------------- Xấp Xỉ Lùi ---------------------
                   
                    case app.xapXiLui
                        app.xapXiLui.BackgroundColor = [0.30,0.75,0.93];
                        app.xapXiTien.BackgroundColor = [0.96,0.96,0.96];
                        app.xapXiTrungTam.BackgroundColor = [0.96,0.96,0.96];
                        switch app.chonSaiSoDaoHamDropDown.Value 
                            case "O(h)"
                                kq = ppXapXiLui_Oh(xa, ya, giatrix);
                            case "O(h^2)"
                                kq = ppXapXiLui_Oh2(xa, ya, giatrix);
                        end
                    app.kqDaoHam.Value = num2str(kq);
                    app.togglebutton_tab4.Value = true;
%---------------- Xấp Xỉ Trung Tâm ----------------

                    case app.xapXiTrungTam
                        app.xapXiTrungTam.BackgroundColor = [0.30,0.75,0.93];
                        app.xapXiLui.BackgroundColor = [0.96,0.96,0.96];
                        app.xapXiTien.BackgroundColor = [0.96,0.96,0.96];
                        switch app.chonSaiSoDaoHamDropDown.Value 
                            case "O(h)"
                                kq = 0;
                            case "O(h^2)"
                                kq = ppXapXiTrungTam(xa, ya, giatrix);
                        end
                    app.kqDaoHam.Value = num2str(kq);
                    app.togglebutton_tab4.Value = true;
                end

%========================== Xấp Xỉ Theo f(x), h ========================

            else
                fx = str2func(['@(x)' char(app.nhapHamSoDaoHam.Value)]);
                h = str2num(app.nhapBuocHDaoHam.Value);
                giatrix = str2num(app.nhapGiatriDaoHam.Value);
%----------------- Xấp Xỉ Tiến --------------------

                switch chonPPDH
                    case app.xapXiTien
                        app.xapXiTien.BackgroundColor = [0.30,0.75,0.93];
                        app.xapXiLui.BackgroundColor = [0.96,0.96,0.96];
                        app.xapXiTrungTam.BackgroundColor = [0.96,0.96,0.96];
                        switch app.chonSaiSoDaoHamDropDown.Value 
                            case "O(h)"
                                kq = ppXapXiTien_Oh_func(fx,h, giatrix);
                            case "O(h^2)"
                                kq = ppXapXiTien_Oh2_func(fx,h, giatrix);
                        end
                    app.kqDaoHam.Value = num2str(kq);
                    app.togglebutton_tab4.Value = true;
%----------------- Xấp Xỉ Lùi ---------------------
                   
                    case app.xapXiLui
                        app.xapXiLui.BackgroundColor = [0.30,0.75,0.93];
                        app.xapXiTien.BackgroundColor = [0.96,0.96,0.96];
                        app.xapXiTrungTam.BackgroundColor = [0.96,0.96,0.96];
                        switch app.chonSaiSoDaoHamDropDown.Value 
                            case "O(h)"
                                kq = ppXapXiLui_Oh_func(fx,h, giatrix);
                            case "O(h^2)"
                                kq = ppXapXiLui_Oh2_func(fx,h, giatrix);
                        end
                    app.kqDaoHam.Value = num2str(kq);
                    app.togglebutton_tab4.Value = true;
%---------------- Xấp Xỉ Trung Tâm ----------------

                    case app.xapXiTrungTam
                        app.xapXiTrungTam.BackgroundColor = [0.30,0.75,0.93];
                        app.xapXiLui.BackgroundColor = [0.96,0.96,0.96];
                        app.xapXiTien.BackgroundColor = [0.96,0.96,0.96];
                        switch app.chonSaiSoDaoHamDropDown.Value 
                            case "O(h)"
                                kq = 0;
                            case "O(h^2)"
                                kq = ppXapXiTrungTam_func(fx,h, giatrix);
                        end
                    app.kqDaoHam.Value = num2str(kq);
                    app.togglebutton_tab4.Value = true;
                end

            end

        end

        % Value changed function: chonDuLieuTichPhan
        function chonDuLieuTichPhanValueChanged(app, event)
            value = app.chonDuLieuTichPhan.Value;
                        value = app.chonDuLieuTichPhan.Value;
            if (value == "Dữ liệu x,y")
                app.nhapXTichPhan.Enable = "on";
                app.nhapYTichPhan.Enable = "on";
                app.nhapHamSoTichPhan.Enable = "off";
                app.nhapCanDuoiTichPhan.Enable = "off";
                app.nhapCanTrenTichPhan.Enable = "off";
                app.nhapNTichPhan.Enable = "off";
            elseif (value == "Hàm f(x)")
                app.nhapXTichPhan.Enable = "off";
                app.nhapYTichPhan.Enable = "off";
                app.nhapHamSoTichPhan.Enable = "on";
                app.nhapCanDuoiTichPhan.Enable = "on";
                app.nhapCanTrenTichPhan.Enable = "on";
                app.nhapNTichPhan.Enable = "on";
            end
        end

        % Selection changed function: chonPPTichPhan
        function chonPPTichPhanSelectionChanged(app, event)
            chonPPTichPhan = app.chonPPTichPhan.SelectedObject;

            if app.nhapHamSoTichPhan.Enable == "off"
                xa = str2num(app.nhapXTichPhan.Value);
                ya = str2num(app.nhapYTichPhan.Value);
                if chonPPTichPhan == app.hinhThang
                    app.hinhThang.BackgroundColor = [0.30,0.75,0.93];
                    app.simpSon13.BackgroundColor = [0.96,0.96,0.96];
                    app.simpSon38.BackgroundColor = [0.96,0.96,0.96];
                    kq = tichPhanHinhThang(xa,ya);
                    app.kqTichPhan.Value = num2str(kq)
                    app.togglebutton_tab5.Value = true;
                end
            else

                fx = str2func(['@(x)' char(app.nhapHamSoTichPhan.Value)]);
                a = str2num(app.nhapCanDuoiTichPhan.Value);
                b = str2num(app.nhapCanTrenTichPhan.Value);
                N = str2num(app.nhapNTichPhan.Value);
                if chonPPTichPhan == app.hinhThang
                    app.hinhThang.BackgroundColor = [0.30,0.75,0.93];
                    app.simpSon13.BackgroundColor = [0.96,0.96,0.96];
                    app.simpSon38.BackgroundColor = [0.96,0.96,0.96];
                    kq = tichPhanHinhThang_Func(fx,a,b,N)
                    app.kqTichPhan.Value = num2str(kq);
                    app.togglebutton_tab5.Value = true;
                elseif chonPPTichPhan == app.simpSon13
                    app.simpSon13.BackgroundColor = [0.30,0.75,0.93];
                    app.hinhThang.BackgroundColor = [0.96,0.96,0.96];
                    app.simpSon38.BackgroundColor = [0.96,0.96,0.96];
                    kq = tichphanSimpson13(fx,a,b,N);
                    app.kqTichPhan.Value = num2str(kq);
                    app.togglebutton_tab5.Value = true;
                elseif chonPPTichPhan == app.simpSon38
                    app.simpSon38.BackgroundColor = [0.30,0.75,0.93];
                    app.simpSon13.BackgroundColor = [0.96,0.96,0.96];
                    app.hinhThang.BackgroundColor = [0.96,0.96,0.96];
                    kq = tichphanSimpson38(fx,a,b,N);
                    app.kqTichPhan.Value = num2str(kq);
                    app.togglebutton_tab5.Value = true;
                end
                
            end
        end

        % Callback function
        function rightButtonPushed(app, event)
% Allow the user to select an image file interactively
    [filename, pathname] = uigetfile({'*.jpg;*.png;*.bmp', 'Image Files (*.jpg, *.png, *.bmp)'; '*.*', 'All Files (*.*)'}, 'Select an Image File');

    % Check if the user selected a file or canceled the operation
    if isequal(filename, 0)
        % User canceled, do nothing
        return;
    end

    % Build the full file path
    imagePath = fullfile(pathname, filename);

    try
        % Read the image using imread
        img = imread(imagePath);

        % Display the image in the app.Image component
        app.Image.CData = img;

    catch
        % Handle any errors that may occur during image reading
        errordlg('Error loading the image.', 'Image Loading Error', 'modal');
    end
        end

        % Button pushed function: TnhButton
        function TnhButtonPushed(app, event)
        PP = app.chonPPNghiem.SelectedObject;
        f = str2func(['@(x)' char(app.nhapHamSoTimNghiem.Value)]);
        khoangPhanLy = str2num(app.nhapKhoangPhanLyNghiem.Value);
        saiSo = str2num(app.nhapSaiSoTimNghiem.Value);
        a = khoangPhanLy(1);
        b = khoangPhanLy(end);
 % Vẽ đồ thị
        xa = a : saiSo: b;
        ya = zeros(size(a));
        for i = 1 : length(xa)
            ya(i) = f(xa(i));
        end
        
%============================ XỬ LÝ NÚT BẤM ============================
% Phương pháp chia đôi
        if PP == app.timNghiemChiaDoiButton
            
            cla(app.doThiHSNghiem);
            [nghiem, solanlap] = ppChiaDoi(f,a,b,saiSo);
            %app.kqChon.Value = "PP "+ app.timNghiemChiaDoiButton.Text;
            if isnan(nghiem)
                app.kqNghiem.Value ="Vô Nghiệm";
            else
                plot(app.doThiHSNghiem,xa,ya,'b', nghiem,f(nghiem),'r*');
                app.kqNghiem.Value =num2str(nghiem);
            end
            app.togglebutton_tab1.Value = true;
            app.nhapHamLap.Enable = 'off';
            
% Phương pháp lặp
        elseif PP == app.timNghiemLapButton
           
            fp = str2func(['@(x)' char(app.nhapHamLap.Value)]);
            
            cla(app.doThiHSNghiem);
            [nghiem,solanlap] = ppLap(fp,a,b,saiSo);
            %app.kqChon.Value = "PP "+ app.timNghiemLapButton.Text;
            if isnan(nghiem)
                app.kqNghiem.Value ="Vô Nghiệm";
            else
                plot(app.doThiHSNghiem,xa,ya,'b', nghiem,f(nghiem),'r*');
                app.kqNghiem.Value =num2str(nghiem);
            end
            app.togglebutton_tab1.Value = true;
            
% Phương pháp tiếp tuyến
        elseif PP == app.timNgiemTiepTuyenButton
           
            cla(app.doThiHSNghiem);
            [nghiem,solanlap] = ppTuyenTinh(f,a,b,saiSo);
            %app.kqChon.Value = "PP Newton";
            if isnan(nghiem)
                app.kqNghiem.Value ="Vô Nghiệm";
            else
                plot(app.doThiHSNghiem,xa,ya,'b', nghiem,f(nghiem),'r*');
                app.kqNghiem.Value =num2str(nghiem);
            end
            app.togglebutton_tab1.Value = true;
            app.nhapHamLap.Enable = 'off';
        end
        app.kqSoLanLap.Value = num2str(solanlap);
        app.doThiHSNghiem.XGrid = 'on';
        app.doThiHSNghiem.YGrid = 'on';
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create ConBoCon and hide until all components are created
            app.ConBoCon = uifigure('Visible', 'off');
            app.ConBoCon.Position = [100 100 672 469];
            app.ConBoCon.Name = 'UI Figure';

            % Create FileMenu
            app.FileMenu = uimenu(app.ConBoCon);
            app.FileMenu.Text = 'File';

            % Create HomeMenu
            app.HomeMenu = uimenu(app.ConBoCon);
            app.HomeMenu.Text = 'Home';

            % Create Menu
            app.Menu = uimenu(app.ConBoCon);
            app.Menu.Text = 'Menu';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.ConBoCon);
            app.TabGroup.Position = [1 1 673 469];

            % Create nghiemTab
            app.nghiemTab = uitab(app.TabGroup);
            app.nghiemTab.Title = 'Nghiệm';
            app.nghiemTab.BackgroundColor = [0.8118 0.8902 0.9294];

            % Create doThiHSNghiem
            app.doThiHSNghiem = uiaxes(app.nghiemTab);
            title(app.doThiHSNghiem, 'ĐỒ THỊ HÀM SỐ')
            xlabel(app.doThiHSNghiem, 'x')
            ylabel(app.doThiHSNghiem, 'y')
            app.doThiHSNghiem.YTickLabelRotation = 0;
            app.doThiHSNghiem.ZTickLabelRotation = 0;
            app.doThiHSNghiem.Position = [323 144 346 299];

            % Create NghimCaPhngTrnhTextAreaLabel
            app.NghimCaPhngTrnhTextAreaLabel = uilabel(app.nghiemTab);
            app.NghimCaPhngTrnhTextAreaLabel.BackgroundColor = [0.302 0.7451 0.9333];
            app.NghimCaPhngTrnhTextAreaLabel.HorizontalAlignment = 'center';
            app.NghimCaPhngTrnhTextAreaLabel.FontWeight = 'bold';
            app.NghimCaPhngTrnhTextAreaLabel.Position = [12 47 161 35];
            app.NghimCaPhngTrnhTextAreaLabel.Text = 'Nghiệm Của Phương Trình';

            % Create kqNghiem
            app.kqNghiem = uitextarea(app.nghiemTab);
            app.kqNghiem.Editable = 'off';
            app.kqNghiem.HorizontalAlignment = 'center';
            app.kqNghiem.FontSize = 15;
            app.kqNghiem.BackgroundColor = [0.902 0.902 0.902];
            app.kqNghiem.Position = [175 47 498 35];

            % Create SLnLpTextAreaLabel
            app.SLnLpTextAreaLabel = uilabel(app.nghiemTab);
            app.SLnLpTextAreaLabel.BackgroundColor = [0.302 0.7451 0.9333];
            app.SLnLpTextAreaLabel.HorizontalAlignment = 'center';
            app.SLnLpTextAreaLabel.FontWeight = 'bold';
            app.SLnLpTextAreaLabel.Position = [12 10 161 35];
            app.SLnLpTextAreaLabel.Text = 'Số Lần Lặp';

            % Create kqSoLanLap
            app.kqSoLanLap = uitextarea(app.nghiemTab);
            app.kqSoLanLap.Editable = 'off';
            app.kqSoLanLap.HorizontalAlignment = 'center';
            app.kqSoLanLap.FontSize = 15;
            app.kqSoLanLap.BackgroundColor = [0.902 0.902 0.902];
            app.kqSoLanLap.Position = [174 10 498 35];

            % Create chonPPNghiem
            app.chonPPNghiem = uibuttongroup(app.nghiemTab);
            app.chonPPNghiem.SelectionChangedFcn = createCallbackFcn(app, @chonPPNghiemSelectionChanged, true);
            app.chonPPNghiem.Title = 'Chọn Phương Pháp Tìm Nghiệm';
            app.chonPPNghiem.BackgroundColor = [0.6588 0.8588 1];
            app.chonPPNghiem.Position = [12 284 301 141];

            % Create timNghiemChiaDoiButton
            app.timNghiemChiaDoiButton = uitogglebutton(app.chonPPNghiem);
            app.timNghiemChiaDoiButton.Text = 'Chia Đôi';
            app.timNghiemChiaDoiButton.BackgroundColor = [0.9608 0.9608 0.9608];
            app.timNghiemChiaDoiButton.Position = [7 81 290 35];

            % Create timNghiemLapButton
            app.timNghiemLapButton = uitogglebutton(app.chonPPNghiem);
            app.timNghiemLapButton.Text = 'Lặp';
            app.timNghiemLapButton.BackgroundColor = [0.9608 0.9608 0.9608];
            app.timNghiemLapButton.Position = [7 42 290 35];

            % Create timNgiemTiepTuyenButton
            app.timNgiemTiepTuyenButton = uitogglebutton(app.chonPPNghiem);
            app.timNgiemTiepTuyenButton.Text = 'Newton ( Tiếp tuyến)';
            app.timNgiemTiepTuyenButton.BackgroundColor = [0.9608 0.9608 0.9608];
            app.timNgiemTiepTuyenButton.Position = [7 4 290 35];

            % Create togglebutton_tab1
            app.togglebutton_tab1 = uitogglebutton(app.chonPPNghiem);
            app.togglebutton_tab1.Enable = 'off';
            app.togglebutton_tab1.Visible = 'off';
            app.togglebutton_tab1.Text = '';
            app.togglebutton_tab1.BackgroundColor = [0.9608 0.9608 0.9608];
            app.togglebutton_tab1.Position = [100 -21 101 22];
            app.togglebutton_tab1.Value = true;

            % Create KhongphnlynghimLabel
            app.KhongphnlynghimLabel = uilabel(app.nghiemTab);
            app.KhongphnlynghimLabel.BackgroundColor = [0.302 0.7451 0.9333];
            app.KhongphnlynghimLabel.Position = [12 236 138 35];
            app.KhongphnlynghimLabel.Text = 'Khoảng Phân Ly Nghiệm';

            % Create nhapKhoangPhanLyNghiem
            app.nhapKhoangPhanLyNghiem = uieditfield(app.nghiemTab, 'text');
            app.nhapKhoangPhanLyNghiem.Position = [149 236 166 35];
            app.nhapKhoangPhanLyNghiem.Value = '-1 2 ';

            % Create NhpSaiSLabel
            app.NhpSaiSLabel = uilabel(app.nghiemTab);
            app.NhpSaiSLabel.BackgroundColor = [0.302 0.7451 0.9333];
            app.NhpSaiSLabel.Position = [12 190 137 35];
            app.NhpSaiSLabel.Text = 'Nhập Sai Số ';

            % Create nhapSaiSoTimNghiem
            app.nhapSaiSoTimNghiem = uieditfield(app.nghiemTab, 'text');
            app.nhapSaiSoTimNghiem.Position = [148 190 166 35];
            app.nhapSaiSoTimNghiem.Value = '0.001';

            % Create NhphmsfxLabel
            app.NhphmsfxLabel = uilabel(app.nghiemTab);
            app.NhphmsfxLabel.BackgroundColor = [0.302 0.749 0.9294];
            app.NhphmsfxLabel.Position = [12 144 138 35];
            app.NhphmsfxLabel.Text = 'Nhập Hàm Số f(x)';

            % Create nhapHamSoTimNghiem
            app.nhapHamSoTimNghiem = uieditfield(app.nghiemTab, 'text');
            app.nhapHamSoTimNghiem.Position = [149 144 166 35];
            app.nhapHamSoTimNghiem.Value = 'x-sin(x)-0.25';

            % Create nhapHamLap
            app.nhapHamLap = uieditfield(app.nghiemTab, 'text');
            app.nhapHamLap.Enable = 'off';
            app.nhapHamLap.Position = [149 96 166 35];
            app.nhapHamLap.Value = 'sin(x)+0.25';

            % Create TnhButton
            app.TnhButton = uibutton(app.nghiemTab, 'push');
            app.TnhButton.ButtonPushedFcn = createCallbackFcn(app, @TnhButtonPushed, true);
            app.TnhButton.BackgroundColor = [0.0745 0.6235 1];
            app.TnhButton.FontSize = 20;
            app.TnhButton.FontWeight = 'bold';
            app.TnhButton.Position = [323 96 346 32];
            app.TnhButton.Text = 'Tính';

            % Create nhapHamLapLabel
            app.nhapHamLapLabel = uilabel(app.nghiemTab);
            app.nhapHamLapLabel.BackgroundColor = [0.302 0.7451 0.9333];
            app.nhapHamLapLabel.Enable = 'off';
            app.nhapHamLapLabel.Position = [12 96 138 35];
            app.nhapHamLapLabel.Text = 'Nhập hàm lặp g(x)';

            % Create noiSuyTab
            app.noiSuyTab = uitab(app.TabGroup);
            app.noiSuyTab.Title = 'Nội Suy';
            app.noiSuyTab.BackgroundColor = [0.8118 0.8902 0.9294];

            % Create doThiHSNoiSuy
            app.doThiHSNoiSuy = uiaxes(app.noiSuyTab);
            title(app.doThiHSNoiSuy, 'ĐỒ THỊ HÀM SỐ')
            xlabel(app.doThiHSNoiSuy, 'x')
            ylabel(app.doThiHSNoiSuy, 'y')
            app.doThiHSNoiSuy.XTickLabelRotation = 0;
            app.doThiHSNoiSuy.YTickLabelRotation = 0;
            app.doThiHSNoiSuy.ZTickLabelRotation = 0;
            app.doThiHSNoiSuy.Position = [323 144 346 299];

            % Create NhpDLiuxLabel
            app.NhpDLiuxLabel = uilabel(app.noiSuyTab);
            app.NhpDLiuxLabel.BackgroundColor = [0.302 0.749 0.9294];
            app.NhpDLiuxLabel.Position = [10 397 137 35];
            app.NhpDLiuxLabel.Text = 'Nhập Dữ Liệu x';

            % Create nhapXNoiSuy
            app.nhapXNoiSuy = uieditfield(app.noiSuyTab, 'text');
            app.nhapXNoiSuy.Position = [146 397 166 35];
            app.nhapXNoiSuy.Value = '[0.1, 0.2, 0.3, 0.4]';

            % Create NhpDLiuyLabel
            app.NhpDLiuyLabel = uilabel(app.noiSuyTab);
            app.NhpDLiuyLabel.BackgroundColor = [0.302 0.749 0.9294];
            app.NhpDLiuyLabel.Position = [10 349 137 34];
            app.NhpDLiuyLabel.Text = 'Nhập Dữ Liệu y';

            % Create nhapYNoiSuy
            app.nhapYNoiSuy = uieditfield(app.noiSuyTab, 'text');
            app.nhapYNoiSuy.Position = [146 348 166 35];
            app.nhapYNoiSuy.Value = '[0.09983, 0.19867, 0.29552, 0.38942]';

            % Create chonPPNoiSuy
            app.chonPPNoiSuy = uibuttongroup(app.noiSuyTab);
            app.chonPPNoiSuy.SelectionChangedFcn = createCallbackFcn(app, @chonPPNoiSuySelectionChanged, true);
            app.chonPPNoiSuy.Title = 'Chọn Phương Pháp Nội Suy';
            app.chonPPNoiSuy.BackgroundColor = [0.6588 0.8588 1];
            app.chonPPNoiSuy.Position = [9 142 301 140];

            % Create noiSuyLarange
            app.noiSuyLarange = uitogglebutton(app.chonPPNoiSuy);
            app.noiSuyLarange.Text = 'Nội Suy Larange';
            app.noiSuyLarange.BackgroundColor = [0.9608 0.9608 0.9608];
            app.noiSuyLarange.Position = [6 63 290 35];

            % Create noiSuyNewton
            app.noiSuyNewton = uitogglebutton(app.chonPPNoiSuy);
            app.noiSuyNewton.Text = 'Nội Suy Newton';
            app.noiSuyNewton.BackgroundColor = [0.9608 0.9608 0.9608];
            app.noiSuyNewton.Position = [6 14 290 35];

            % Create togglebutton_tab2
            app.togglebutton_tab2 = uitogglebutton(app.chonPPNoiSuy);
            app.togglebutton_tab2.Enable = 'off';
            app.togglebutton_tab2.Visible = 'off';
            app.togglebutton_tab2.Text = '';
            app.togglebutton_tab2.BackgroundColor = [0.9608 0.9608 0.9608];
            app.togglebutton_tab2.Position = [108 14 100 23];
            app.togglebutton_tab2.Value = true;

            % Create NhpgitrnisuyLabel
            app.NhpgitrnisuyLabel = uilabel(app.noiSuyTab);
            app.NhpgitrnisuyLabel.BackgroundColor = [0.302 0.749 0.9294];
            app.NhpgitrnisuyLabel.Position = [9 295 138 35];
            app.NhpgitrnisuyLabel.Text = 'Nhập Giá Trị Nội Suy';

            % Create giaTriNoiSuy
            app.giaTriNoiSuy = uieditfield(app.noiSuyTab, 'text');
            app.giaTriNoiSuy.Position = [146 295 166 35];
            app.giaTriNoiSuy.Value = '0.14';

            % Create kqNoiSuy
            app.kqNoiSuy = uitextarea(app.noiSuyTab);
            app.kqNoiSuy.Editable = 'off';
            app.kqNoiSuy.HorizontalAlignment = 'center';
            app.kqNoiSuy.FontSize = 15;
            app.kqNoiSuy.BackgroundColor = [0.902 0.902 0.902];
            app.kqNoiSuy.Position = [184 59 487 41];

            % Create KtqunisuyLabel
            app.KtqunisuyLabel = uilabel(app.noiSuyTab);
            app.KtqunisuyLabel.BackgroundColor = [0.302 0.7451 0.9333];
            app.KtqunisuyLabel.FontWeight = 'bold';
            app.KtqunisuyLabel.Position = [10 59 172 41];
            app.KtqunisuyLabel.Text = 'Kết quả nội suy';

            % Create KtquathcnisuyLabel
            app.KtquathcnisuyLabel = uilabel(app.noiSuyTab);
            app.KtquathcnisuyLabel.BackgroundColor = [0.302 0.7451 0.9333];
            app.KtquathcnisuyLabel.FontWeight = 'bold';
            app.KtquathcnisuyLabel.Position = [10 14 172 41];
            app.KtquathcnisuyLabel.Text = 'Kết quả đa thức nội suy';

            % Create kqDaThucNoiSuy
            app.kqDaThucNoiSuy = uitextarea(app.noiSuyTab);
            app.kqDaThucNoiSuy.Editable = 'off';
            app.kqDaThucNoiSuy.HorizontalAlignment = 'center';
            app.kqDaThucNoiSuy.FontSize = 15;
            app.kqDaThucNoiSuy.BackgroundColor = [0.902 0.902 0.902];
            app.kqDaThucNoiSuy.Position = [184 14 487 41];

            % Create hoiQuyTab
            app.hoiQuyTab = uitab(app.TabGroup);
            app.hoiQuyTab.Title = 'Hồi Quy';
            app.hoiQuyTab.BackgroundColor = [0.8118 0.8902 0.9294];

            % Create doThiHSHoiQuy
            app.doThiHSHoiQuy = uiaxes(app.hoiQuyTab);
            title(app.doThiHSHoiQuy, 'ĐỒ THỊ HÀM SỐ')
            xlabel(app.doThiHSHoiQuy, 'x')
            ylabel(app.doThiHSHoiQuy, 'y')
            app.doThiHSHoiQuy.XTickLabelRotation = 0;
            app.doThiHSHoiQuy.YTickLabelRotation = 0;
            app.doThiHSHoiQuy.ZTickLabelRotation = 0;
            app.doThiHSHoiQuy.Position = [323 144 346 299];

            % Create NhpgitrdonLabel
            app.NhpgitrdonLabel = uilabel(app.hoiQuyTab);
            app.NhpgitrdonLabel.BackgroundColor = [0.302 0.749 0.9294];
            app.NhpgitrdonLabel.Position = [10 295 137 35];
            app.NhpgitrdonLabel.Text = 'Nhập giá trị dự đoán';

            % Create nhapGiaTriHoiQuy
            app.nhapGiaTriHoiQuy = uieditfield(app.hoiQuyTab, 'text');
            app.nhapGiaTriHoiQuy.Position = [146 295 166 35];

            % Create KtqudonLabel
            app.KtqudonLabel = uilabel(app.hoiQuyTab);
            app.KtqudonLabel.BackgroundColor = [0.302 0.7451 0.9333];
            app.KtqudonLabel.FontWeight = 'bold';
            app.KtqudonLabel.Position = [10 14 172 41];
            app.KtqudonLabel.Text = 'Kết quả dự đoán';

            % Create kqHoiQuy
            app.kqHoiQuy = uitextarea(app.hoiQuyTab);
            app.kqHoiQuy.Editable = 'off';
            app.kqHoiQuy.HorizontalAlignment = 'center';
            app.kqHoiQuy.FontSize = 15;
            app.kqHoiQuy.FontWeight = 'bold';
            app.kqHoiQuy.BackgroundColor = [0.902 0.902 0.902];
            app.kqHoiQuy.Position = [184 14 487 41];

            % Create NhpdliuxEditFieldLabel
            app.NhpdliuxEditFieldLabel = uilabel(app.hoiQuyTab);
            app.NhpdliuxEditFieldLabel.BackgroundColor = [0.302 0.749 0.9294];
            app.NhpdliuxEditFieldLabel.Position = [10 397 137 35];
            app.NhpdliuxEditFieldLabel.Text = 'Nhập dữ liệu x';

            % Create nhapXHoiQuy
            app.nhapXHoiQuy = uieditfield(app.hoiQuyTab, 'text');
            app.nhapXHoiQuy.Position = [146 397 166 35];
            app.nhapXHoiQuy.Value = '[2.5,3.5,5,6,7.5,10,12.5,15,17.5,20]';

            % Create NhpdliuyEditFieldLabel
            app.NhpdliuyEditFieldLabel = uilabel(app.hoiQuyTab);
            app.NhpdliuyEditFieldLabel.BackgroundColor = [0.302 0.749 0.9294];
            app.NhpdliuyEditFieldLabel.Position = [10 348 137 35];
            app.NhpdliuyEditFieldLabel.Text = 'Nhập dữ liệu y';

            % Create nhapYHoiQuy
            app.nhapYHoiQuy = uieditfield(app.hoiQuyTab, 'text');
            app.nhapYHoiQuy.Position = [146 348 166 35];
            app.nhapYHoiQuy.Value = '[13,11,8.5,8.2,7,6.2,5.2,4.8,4.6,4.3]';

            % Create chonPPHoiQuy
            app.chonPPHoiQuy = uibuttongroup(app.hoiQuyTab);
            app.chonPPHoiQuy.SelectionChangedFcn = createCallbackFcn(app, @chonPPHoiQuySelectionChanged, true);
            app.chonPPHoiQuy.Title = 'Chọn Phương Pháp Hồi Quy';
            app.chonPPHoiQuy.BackgroundColor = [0.6588 0.8588 1];
            app.chonPPHoiQuy.Position = [9 142 301 140];

            % Create hoiQuyTuyenTinh
            app.hoiQuyTuyenTinh = uitogglebutton(app.chonPPHoiQuy);
            app.hoiQuyTuyenTinh.Text = 'Hồi Quy Tuyến Tính';
            app.hoiQuyTuyenTinh.BackgroundColor = [0.9608 0.9608 0.9608];
            app.hoiQuyTuyenTinh.Position = [6 78 290 35];

            % Create hoiQuyHamMue
            app.hoiQuyHamMue = uitogglebutton(app.chonPPHoiQuy);
            app.hoiQuyHamMue.Text = 'Hồi Quy Hàm Mũ  a*e^(b*x)';
            app.hoiQuyHamMue.BackgroundColor = [0.9608 0.9608 0.9608];
            app.hoiQuyHamMue.Position = [6 3 290 35];

            % Create hoiQuyHamMux
            app.hoiQuyHamMux = uitogglebutton(app.chonPPHoiQuy);
            app.hoiQuyHamMux.Text = 'Hồi Quy Hàm Mũ a*x^b';
            app.hoiQuyHamMux.BackgroundColor = [0.9608 0.9608 0.9608];
            app.hoiQuyHamMux.Position = [6 41 290 35];

            % Create togglebutton_tab3
            app.togglebutton_tab3 = uitogglebutton(app.chonPPHoiQuy);
            app.togglebutton_tab3.Enable = 'off';
            app.togglebutton_tab3.Visible = 'off';
            app.togglebutton_tab3.Text = '';
            app.togglebutton_tab3.BackgroundColor = [0.9608 0.9608 0.9608];
            app.togglebutton_tab3.Position = [56 13 181 27];
            app.togglebutton_tab3.Value = true;

            % Create kqPTHoiQuy
            app.kqPTHoiQuy = uitextarea(app.hoiQuyTab);
            app.kqPTHoiQuy.Editable = 'off';
            app.kqPTHoiQuy.HorizontalAlignment = 'center';
            app.kqPTHoiQuy.FontSize = 15;
            app.kqPTHoiQuy.BackgroundColor = [0.902 0.902 0.902];
            app.kqPTHoiQuy.Position = [184 59 487 41];

            % Create KtquphngtrnhhiquyLabel
            app.KtquphngtrnhhiquyLabel = uilabel(app.hoiQuyTab);
            app.KtquphngtrnhhiquyLabel.BackgroundColor = [0.302 0.7451 0.9333];
            app.KtquphngtrnhhiquyLabel.FontWeight = 'bold';
            app.KtquphngtrnhhiquyLabel.Position = [10 59 172 41];
            app.KtquphngtrnhhiquyLabel.Text = 'Kết quả phương trình hồi quy';

            % Create daoHamTab
            app.daoHamTab = uitab(app.TabGroup);
            app.daoHamTab.Title = 'Đạo Hàm';
            app.daoHamTab.BackgroundColor = [0.8118 0.8902 0.9294];

            % Create chonDuLieuDaoHamButtonGroup
            app.chonDuLieuDaoHamButtonGroup = uibuttongroup(app.daoHamTab);
            app.chonDuLieuDaoHamButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @chonDuLieuDaoHamButtonGroupSelectionChanged, true);
            app.chonDuLieuDaoHamButtonGroup.Title = 'Chọn kiểu dữ liệu vào';
            app.chonDuLieuDaoHamButtonGroup.BackgroundColor = [0.6588 0.8588 1];
            app.chonDuLieuDaoHamButtonGroup.Position = [10 206 314 214];

            % Create NhpdliuxEditFieldLabel_3
            app.NhpdliuxEditFieldLabel_3 = uilabel(app.chonDuLieuDaoHamButtonGroup);
            app.NhpdliuxEditFieldLabel_3.BackgroundColor = [0.302 0.749 0.9294];
            app.NhpdliuxEditFieldLabel_3.Position = [4 104 138 35];
            app.NhpdliuxEditFieldLabel_3.Text = 'Nhập dữ liệu x ';

            % Create nhapXDaoHam
            app.nhapXDaoHam = uieditfield(app.chonDuLieuDaoHamButtonGroup, 'text');
            app.nhapXDaoHam.Position = [141 104 166 35];
            app.nhapXDaoHam.Value = '[1, 2, 3, 4, 5,6,7,8,9,10]';

            % Create NhpdliuyEditFieldLabel_3
            app.NhpdliuyEditFieldLabel_3 = uilabel(app.chonDuLieuDaoHamButtonGroup);
            app.NhpdliuyEditFieldLabel_3.BackgroundColor = [0.302 0.749 0.9294];
            app.NhpdliuyEditFieldLabel_3.Position = [4 56 138 35];
            app.NhpdliuyEditFieldLabel_3.Text = 'Nhập dữ liệu y';

            % Create nhapYDaoHam
            app.nhapYDaoHam = uieditfield(app.chonDuLieuDaoHamButtonGroup, 'text');
            app.nhapYDaoHam.Position = [141 56 166 35];
            app.nhapYDaoHam.Value = '[1,4,9,16,25,36,49,64,81,100]';

            % Create ChndliuvoLabel
            app.ChndliuvoLabel = uilabel(app.chonDuLieuDaoHamButtonGroup);
            app.ChndliuvoLabel.BackgroundColor = [0.302 0.749 0.9294];
            app.ChndliuvoLabel.Position = [4 152 138 35];
            app.ChndliuvoLabel.Text = 'Chọn dữ liệu vào';

            % Create chonDuLieuDaoHam
            app.chonDuLieuDaoHam = uidropdown(app.chonDuLieuDaoHamButtonGroup);
            app.chonDuLieuDaoHam.Items = {'Dữ liệu x,y', 'Hàm f(x)'};
            app.chonDuLieuDaoHam.ValueChangedFcn = createCallbackFcn(app, @chonDuLieuDaoHamValueChanged, true);
            app.chonDuLieuDaoHam.BackgroundColor = [1 1 1];
            app.chonDuLieuDaoHam.Position = [141 152 166 35];
            app.chonDuLieuDaoHam.Value = 'Dữ liệu x,y';

            % Create NhpHmSLabel
            app.NhpHmSLabel = uilabel(app.chonDuLieuDaoHamButtonGroup);
            app.NhpHmSLabel.BackgroundColor = [0.302 0.749 0.9294];
            app.NhpHmSLabel.Position = [4 8 138 35];
            app.NhpHmSLabel.Text = 'Nhập Hàm Số';

            % Create nhapHamSoDaoHam
            app.nhapHamSoDaoHam = uieditfield(app.chonDuLieuDaoHamButtonGroup, 'text');
            app.nhapHamSoDaoHam.Enable = 'off';
            app.nhapHamSoDaoHam.Position = [141 8 166 35];
            app.nhapHamSoDaoHam.Value = 'x^2+1';

            % Create ChngitrsaisDropDownLabel
            app.ChngitrsaisDropDownLabel = uilabel(app.daoHamTab);
            app.ChngitrsaisDropDownLabel.BackgroundColor = [0.302 0.749 0.9294];
            app.ChngitrsaisDropDownLabel.Position = [10 157 142 35];
            app.ChngitrsaisDropDownLabel.Text = 'Chọn giá trị sai số';

            % Create chonSaiSoDaoHamDropDown
            app.chonSaiSoDaoHamDropDown = uidropdown(app.daoHamTab);
            app.chonSaiSoDaoHamDropDown.Items = {'O(h)', 'O(h^2)'};
            app.chonSaiSoDaoHamDropDown.BackgroundColor = [1 1 1];
            app.chonSaiSoDaoHamDropDown.Position = [151 158 166 35];
            app.chonSaiSoDaoHamDropDown.Value = 'O(h)';

            % Create KtquohmLabel
            app.KtquohmLabel = uilabel(app.daoHamTab);
            app.KtquohmLabel.BackgroundColor = [0.302 0.7451 0.9333];
            app.KtquohmLabel.FontWeight = 'bold';
            app.KtquohmLabel.Position = [10 14 172 41];
            app.KtquohmLabel.Text = 'Kết quả đạo hàm';

            % Create kqDaoHam
            app.kqDaoHam = uitextarea(app.daoHamTab);
            app.kqDaoHam.Editable = 'off';
            app.kqDaoHam.FontSize = 15;
            app.kqDaoHam.BackgroundColor = [0.902 0.902 0.902];
            app.kqDaoHam.Position = [184 14 487 41];

            % Create chonPPDaoHamButtonGroup
            app.chonPPDaoHamButtonGroup = uibuttongroup(app.daoHamTab);
            app.chonPPDaoHamButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @chonPPDaoHamButtonGroupSelectionChanged, true);
            app.chonPPDaoHamButtonGroup.Title = 'Chọn Phương Pháp Đạo Hàm';
            app.chonPPDaoHamButtonGroup.BackgroundColor = [0.6588 0.8588 1];
            app.chonPPDaoHamButtonGroup.Position = [356 249 307 171];

            % Create xapXiTien
            app.xapXiTien = uitogglebutton(app.chonPPDaoHamButtonGroup);
            app.xapXiTien.Text = 'Xấp Xỉ Tiến';
            app.xapXiTien.BackgroundColor = [0.9608 0.9608 0.9608];
            app.xapXiTien.Position = [8 108 290 35];

            % Create xapXiLui
            app.xapXiLui = uitogglebutton(app.chonPPDaoHamButtonGroup);
            app.xapXiLui.Text = 'Xấp Xỉ Lùi';
            app.xapXiLui.BackgroundColor = [0.9608 0.9608 0.9608];
            app.xapXiLui.Position = [8 61 290 35];

            % Create xapXiTrungTam
            app.xapXiTrungTam = uitogglebutton(app.chonPPDaoHamButtonGroup);
            app.xapXiTrungTam.Text = 'Xấp Xỉ Trung Tâm';
            app.xapXiTrungTam.BackgroundColor = [0.9608 0.9608 0.9608];
            app.xapXiTrungTam.Position = [8 13 290 35];

            % Create togglebutton_tab4
            app.togglebutton_tab4 = uitogglebutton(app.chonPPDaoHamButtonGroup);
            app.togglebutton_tab4.Enable = 'off';
            app.togglebutton_tab4.Visible = 'off';
            app.togglebutton_tab4.Text = '';
            app.togglebutton_tab4.BackgroundColor = [0.9608 0.9608 0.9608];
            app.togglebutton_tab4.Position = [104 29 100 23];
            app.togglebutton_tab4.Value = true;

            % Create NhpgitrohmLabel
            app.NhpgitrohmLabel = uilabel(app.daoHamTab);
            app.NhpgitrohmLabel.BackgroundColor = [0.302 0.749 0.9294];
            app.NhpgitrohmLabel.Position = [10 111 142 35];
            app.NhpgitrohmLabel.Text = 'Nhập giá trị tính đạo hàm';

            % Create nhapGiatriDaoHam
            app.nhapGiatriDaoHam = uieditfield(app.daoHamTab, 'text');
            app.nhapGiatriDaoHam.Position = [151 111 166 35];

            % Create NhpbctnhhLabel_2
            app.NhpbctnhhLabel_2 = uilabel(app.daoHamTab);
            app.NhpbctnhhLabel_2.BackgroundColor = [0.302 0.749 0.9294];
            app.NhpbctnhhLabel_2.Position = [356 156 142 35];
            app.NhpbctnhhLabel_2.Text = 'Nhập bước tính h';

            % Create nhapBuocHDaoHam
            app.nhapBuocHDaoHam = uieditfield(app.daoHamTab, 'text');
            app.nhapBuocHDaoHam.Enable = 'off';
            app.nhapBuocHDaoHam.Position = [497 156 166 35];

            % Create tichPhanTab
            app.tichPhanTab = uitab(app.TabGroup);
            app.tichPhanTab.Title = 'Tích Phân';
            app.tichPhanTab.BackgroundColor = [0.8118 0.8902 0.9294];

            % Create chonDuLieuTichPhanButtonGroup
            app.chonDuLieuTichPhanButtonGroup = uibuttongroup(app.tichPhanTab);
            app.chonDuLieuTichPhanButtonGroup.Title = 'Chọn kiểu dữ liệu vào';
            app.chonDuLieuTichPhanButtonGroup.BackgroundColor = [0.6588 0.8588 1];
            app.chonDuLieuTichPhanButtonGroup.Position = [10 206 314 214];

            % Create NhpdliuxEditFieldLabel_4
            app.NhpdliuxEditFieldLabel_4 = uilabel(app.chonDuLieuTichPhanButtonGroup);
            app.NhpdliuxEditFieldLabel_4.BackgroundColor = [0.302 0.749 0.9294];
            app.NhpdliuxEditFieldLabel_4.Position = [4 104 138 35];
            app.NhpdliuxEditFieldLabel_4.Text = 'Nhập dữ liệu x ';

            % Create nhapXTichPhan
            app.nhapXTichPhan = uieditfield(app.chonDuLieuTichPhanButtonGroup, 'text');
            app.nhapXTichPhan.Position = [141 104 166 35];
            app.nhapXTichPhan.Value = '[1, 2, 3, 4,5]';

            % Create NhpdliuyEditFieldLabel_4
            app.NhpdliuyEditFieldLabel_4 = uilabel(app.chonDuLieuTichPhanButtonGroup);
            app.NhpdliuyEditFieldLabel_4.BackgroundColor = [0.302 0.749 0.9294];
            app.NhpdliuyEditFieldLabel_4.Position = [4 56 138 35];
            app.NhpdliuyEditFieldLabel_4.Text = 'Nhập dữ liệu y';

            % Create nhapYTichPhan
            app.nhapYTichPhan = uieditfield(app.chonDuLieuTichPhanButtonGroup, 'text');
            app.nhapYTichPhan.Position = [141 56 166 35];
            app.nhapYTichPhan.Value = '[2, 4, 6, 8,10]';

            % Create ChndliuvoLabel_2
            app.ChndliuvoLabel_2 = uilabel(app.chonDuLieuTichPhanButtonGroup);
            app.ChndliuvoLabel_2.BackgroundColor = [0.302 0.749 0.9294];
            app.ChndliuvoLabel_2.Position = [4 152 138 35];
            app.ChndliuvoLabel_2.Text = 'Chọn dữ liệu vào';

            % Create chonDuLieuTichPhan
            app.chonDuLieuTichPhan = uidropdown(app.chonDuLieuTichPhanButtonGroup);
            app.chonDuLieuTichPhan.Items = {'Dữ liệu x,y', 'Hàm f(x)'};
            app.chonDuLieuTichPhan.ValueChangedFcn = createCallbackFcn(app, @chonDuLieuTichPhanValueChanged, true);
            app.chonDuLieuTichPhan.BackgroundColor = [1 1 1];
            app.chonDuLieuTichPhan.Position = [141 152 166 35];
            app.chonDuLieuTichPhan.Value = 'Dữ liệu x,y';

            % Create NhpHmSLabel_2
            app.NhpHmSLabel_2 = uilabel(app.chonDuLieuTichPhanButtonGroup);
            app.NhpHmSLabel_2.BackgroundColor = [0.302 0.749 0.9294];
            app.NhpHmSLabel_2.Position = [4 8 138 35];
            app.NhpHmSLabel_2.Text = 'Nhập Hàm Số';

            % Create nhapHamSoTichPhan
            app.nhapHamSoTichPhan = uieditfield(app.chonDuLieuTichPhanButtonGroup, 'text');
            app.nhapHamSoTichPhan.Enable = 'off';
            app.nhapHamSoTichPhan.Position = [141 8 166 35];
            app.nhapHamSoTichPhan.Value = '2*x';

            % Create KtqutchphnLabel
            app.KtqutchphnLabel = uilabel(app.tichPhanTab);
            app.KtqutchphnLabel.BackgroundColor = [0.302 0.7451 0.9333];
            app.KtqutchphnLabel.FontWeight = 'bold';
            app.KtqutchphnLabel.Position = [10 14 172 41];
            app.KtqutchphnLabel.Text = 'Kết quả tích phân';

            % Create kqTichPhan
            app.kqTichPhan = uitextarea(app.tichPhanTab);
            app.kqTichPhan.Editable = 'off';
            app.kqTichPhan.FontSize = 15;
            app.kqTichPhan.BackgroundColor = [0.902 0.902 0.902];
            app.kqTichPhan.Position = [184 14 487 41];

            % Create chonPPTichPhan
            app.chonPPTichPhan = uibuttongroup(app.tichPhanTab);
            app.chonPPTichPhan.SelectionChangedFcn = createCallbackFcn(app, @chonPPTichPhanSelectionChanged, true);
            app.chonPPTichPhan.Title = 'Chọn Phương Pháp Tích Phân';
            app.chonPPTichPhan.BackgroundColor = [0.6588 0.8588 1];
            app.chonPPTichPhan.Position = [358 244 302 176];

            % Create hinhThang
            app.hinhThang = uitogglebutton(app.chonPPTichPhan);
            app.hinhThang.Text = 'Hình Thang';
            app.hinhThang.BackgroundColor = [0.9608 0.9608 0.9608];
            app.hinhThang.Position = [7 114 290 35];

            % Create simpSon13
            app.simpSon13 = uitogglebutton(app.chonPPTichPhan);
            app.simpSon13.Text = 'Simpson 1/3';
            app.simpSon13.BackgroundColor = [0.9608 0.9608 0.9608];
            app.simpSon13.Position = [7 66 290 35];

            % Create simpSon38
            app.simpSon38 = uitogglebutton(app.chonPPTichPhan);
            app.simpSon38.Text = 'Simpson 3/8';
            app.simpSon38.BackgroundColor = [0.9608 0.9608 0.9608];
            app.simpSon38.Position = [7 17 290 35];

            % Create togglebutton_tab5
            app.togglebutton_tab5 = uitogglebutton(app.chonPPTichPhan);
            app.togglebutton_tab5.Enable = 'off';
            app.togglebutton_tab5.Visible = 'off';
            app.togglebutton_tab5.Text = '';
            app.togglebutton_tab5.Position = [96 21 100 23];
            app.togglebutton_tab5.Value = true;

            % Create NhpcntrnEditFieldLabel
            app.NhpcntrnEditFieldLabel = uilabel(app.tichPhanTab);
            app.NhpcntrnEditFieldLabel.BackgroundColor = [0.302 0.749 0.9294];
            app.NhpcntrnEditFieldLabel.Position = [10 158 142 35];
            app.NhpcntrnEditFieldLabel.Text = 'Nhập cận trên';

            % Create nhapCanTrenTichPhan
            app.nhapCanTrenTichPhan = uieditfield(app.tichPhanTab, 'text');
            app.nhapCanTrenTichPhan.Enable = 'off';
            app.nhapCanTrenTichPhan.Position = [151 158 166 35];

            % Create NhpcndiLabel_2
            app.NhpcndiLabel_2 = uilabel(app.tichPhanTab);
            app.NhpcndiLabel_2.BackgroundColor = [0.302 0.749 0.9294];
            app.NhpcndiLabel_2.Position = [10 111 142 35];
            app.NhpcndiLabel_2.Text = 'Nhập cận dưới';

            % Create nhapCanDuoiTichPhan
            app.nhapCanDuoiTichPhan = uieditfield(app.tichPhanTab, 'text');
            app.nhapCanDuoiTichPhan.Enable = 'off';
            app.nhapCanDuoiTichPhan.Position = [151 111 166 35];

            % Create NhpsonNLabel_2
            app.NhpsonNLabel_2 = uilabel(app.tichPhanTab);
            app.NhpsonNLabel_2.BackgroundColor = [0.302 0.749 0.9294];
            app.NhpsonNLabel_2.Position = [356 156 142 35];
            app.NhpsonNLabel_2.Text = 'Nhập số đoạn N';

            % Create nhapNTichPhan
            app.nhapNTichPhan = uieditfield(app.tichPhanTab, 'text');
            app.nhapNTichPhan.Enable = 'off';
            app.nhapNTichPhan.Position = [497 156 166 35];

            % Create GioiThieuNhomTab
            app.GioiThieuNhomTab = uitab(app.TabGroup);
            app.GioiThieuNhomTab.Title = 'Giới Thiệu Nhóm';
            app.GioiThieuNhomTab.BackgroundColor = [0.8118 0.8902 0.9294];

            % Create NHMFFFFFF10Label
            app.NHMFFFFFF10Label = uilabel(app.GioiThieuNhomTab);
            app.NHMFFFFFF10Label.BackgroundColor = [0.302 0.7451 0.9333];
            app.NHMFFFFFF10Label.HorizontalAlignment = 'center';
            app.NHMFFFFFF10Label.FontName = 'Dubai';
            app.NHMFFFFFF10Label.FontSize = 36;
            app.NHMFFFFFF10Label.FontWeight = 'bold';
            app.NHMFFFFFF10Label.Position = [1 356 667 89];
            app.NHMFFFFFF10Label.Text = 'NHÓM FFFFFF10';

            % Create STTLabel
            app.STTLabel = uilabel(app.GioiThieuNhomTab);
            app.STTLabel.BackgroundColor = [0.4196 0.7608 1];
            app.STTLabel.HorizontalAlignment = 'center';
            app.STTLabel.FontName = 'Dubai';
            app.STTLabel.FontWeight = 'bold';
            app.STTLabel.Position = [1 293 161 50];
            app.STTLabel.Text = 'STT';

            % Create MSSINHVINLabel
            app.MSSINHVINLabel = uilabel(app.GioiThieuNhomTab);
            app.MSSINHVINLabel.BackgroundColor = [0.4196 0.7608 1];
            app.MSSINHVINLabel.HorizontalAlignment = 'center';
            app.MSSINHVINLabel.FontName = 'Bookman';
            app.MSSINHVINLabel.FontWeight = 'bold';
            app.MSSINHVINLabel.Position = [170 293 193 50];
            app.MSSINHVINLabel.Text = 'MÃ SỐ SINH VIÊN';

            % Create HVTNLabel
            app.HVTNLabel = uilabel(app.GioiThieuNhomTab);
            app.HVTNLabel.BackgroundColor = [0.4196 0.7608 1];
            app.HVTNLabel.HorizontalAlignment = 'center';
            app.HVTNLabel.FontName = 'Dubai';
            app.HVTNLabel.FontWeight = 'bold';
            app.HVTNLabel.Position = [372 293 297 50];
            app.HVTNLabel.Text = 'HỌ VÀ TÊN';

            % Create Label_2
            app.Label_2 = uilabel(app.GioiThieuNhomTab);
            app.Label_2.BackgroundColor = [0.6588 0.8588 1];
            app.Label_2.HorizontalAlignment = 'center';
            app.Label_2.FontName = 'Dubai';
            app.Label_2.FontWeight = 'bold';
            app.Label_2.Position = [1 238 161 50];
            app.Label_2.Text = '1';

            % Create Label_7
            app.Label_7 = uilabel(app.GioiThieuNhomTab);
            app.Label_7.BackgroundColor = [0.6588 0.8588 1];
            app.Label_7.HorizontalAlignment = 'center';
            app.Label_7.FontName = 'Bookman';
            app.Label_7.FontWeight = 'bold';
            app.Label_7.Position = [170 238 193 50];
            app.Label_7.Text = '21200055';

            % Create NGUYNTRNANHTLabel
            app.NGUYNTRNANHTLabel = uilabel(app.GioiThieuNhomTab);
            app.NGUYNTRNANHTLabel.BackgroundColor = [0.6588 0.8588 1];
            app.NGUYNTRNANHTLabel.HorizontalAlignment = 'center';
            app.NGUYNTRNANHTLabel.FontName = 'Dubai';
            app.NGUYNTRNANHTLabel.FontWeight = 'bold';
            app.NGUYNTRNANHTLabel.Position = [372 238 297 50];
            app.NGUYNTRNANHTLabel.Text = 'NGUYỄN TRẦN ANH ĐẠT';

            % Create Label_3
            app.Label_3 = uilabel(app.GioiThieuNhomTab);
            app.Label_3.BackgroundColor = [0.4196 0.7608 1];
            app.Label_3.HorizontalAlignment = 'center';
            app.Label_3.FontName = 'Dubai';
            app.Label_3.FontWeight = 'bold';
            app.Label_3.Position = [1 184 161 50];
            app.Label_3.Text = '2';

            % Create Label_8
            app.Label_8 = uilabel(app.GioiThieuNhomTab);
            app.Label_8.BackgroundColor = [0.4196 0.7608 1];
            app.Label_8.HorizontalAlignment = 'center';
            app.Label_8.FontName = 'Bookman';
            app.Label_8.FontWeight = 'bold';
            app.Label_8.Position = [170 184 193 50];
            app.Label_8.Text = '21200071';

            % Create LCDUYLabel
            app.LCDUYLabel = uilabel(app.GioiThieuNhomTab);
            app.LCDUYLabel.BackgroundColor = [0.4196 0.7608 1];
            app.LCDUYLabel.HorizontalAlignment = 'center';
            app.LCDUYLabel.FontName = 'Dubai';
            app.LCDUYLabel.FontWeight = 'bold';
            app.LCDUYLabel.Position = [372 184 297 50];
            app.LCDUYLabel.Text = 'LÊ ĐỨC DUY';

            % Create Label_4
            app.Label_4 = uilabel(app.GioiThieuNhomTab);
            app.Label_4.BackgroundColor = [0.6588 0.8588 1];
            app.Label_4.HorizontalAlignment = 'center';
            app.Label_4.FontName = 'Dubai';
            app.Label_4.FontWeight = 'bold';
            app.Label_4.Position = [1 130 161 50];
            app.Label_4.Text = '3';

            % Create Label_9
            app.Label_9 = uilabel(app.GioiThieuNhomTab);
            app.Label_9.BackgroundColor = [0.6588 0.8588 1];
            app.Label_9.HorizontalAlignment = 'center';
            app.Label_9.FontName = 'Bookman';
            app.Label_9.FontWeight = 'bold';
            app.Label_9.Position = [170 130 193 50];
            app.Label_9.Text = '21200144';

            % Create CAOVNNAMLabel
            app.CAOVNNAMLabel = uilabel(app.GioiThieuNhomTab);
            app.CAOVNNAMLabel.BackgroundColor = [0.6588 0.8588 1];
            app.CAOVNNAMLabel.HorizontalAlignment = 'center';
            app.CAOVNNAMLabel.FontName = 'Dubai';
            app.CAOVNNAMLabel.FontWeight = 'bold';
            app.CAOVNNAMLabel.Position = [372 130 296 50];
            app.CAOVNNAMLabel.Text = 'CAO VĂN NAM';

            % Create Label_5
            app.Label_5 = uilabel(app.GioiThieuNhomTab);
            app.Label_5.BackgroundColor = [0.4196 0.7608 1];
            app.Label_5.HorizontalAlignment = 'center';
            app.Label_5.FontName = 'Dubai';
            app.Label_5.FontWeight = 'bold';
            app.Label_5.Position = [1 76 161 50];
            app.Label_5.Text = '4';

            % Create Label_10
            app.Label_10 = uilabel(app.GioiThieuNhomTab);
            app.Label_10.BackgroundColor = [0.4196 0.7608 1];
            app.Label_10.HorizontalAlignment = 'center';
            app.Label_10.FontName = 'Bookman';
            app.Label_10.FontWeight = 'bold';
            app.Label_10.Position = [170 76 193 50];
            app.Label_10.Text = '21200197';

            % Create NGUYNTHTHYQUNHLabel
            app.NGUYNTHTHYQUNHLabel = uilabel(app.GioiThieuNhomTab);
            app.NGUYNTHTHYQUNHLabel.BackgroundColor = [0.4196 0.7608 1];
            app.NGUYNTHTHYQUNHLabel.HorizontalAlignment = 'center';
            app.NGUYNTHTHYQUNHLabel.FontName = 'Dubai';
            app.NGUYNTHTHYQUNHLabel.FontWeight = 'bold';
            app.NGUYNTHTHYQUNHLabel.Position = [372 76 297 50];
            app.NGUYNTHTHYQUNHLabel.Text = 'NGUYỄN THỊ THÚY QUỲNH';

            % Create Label_6
            app.Label_6 = uilabel(app.GioiThieuNhomTab);
            app.Label_6.BackgroundColor = [0.6588 0.8588 1];
            app.Label_6.HorizontalAlignment = 'center';
            app.Label_6.FontName = 'Dubai';
            app.Label_6.FontWeight = 'bold';
            app.Label_6.Position = [1 22 161 50];
            app.Label_6.Text = '5';

            % Create Label_11
            app.Label_11 = uilabel(app.GioiThieuNhomTab);
            app.Label_11.BackgroundColor = [0.6588 0.8588 1];
            app.Label_11.HorizontalAlignment = 'center';
            app.Label_11.FontName = 'Bookman';
            app.Label_11.FontWeight = 'bold';
            app.Label_11.Position = [170 22 193 50];
            app.Label_11.Text = '21200265';

            % Create NGUYNMINHVNGLabel
            app.NGUYNMINHVNGLabel = uilabel(app.GioiThieuNhomTab);
            app.NGUYNMINHVNGLabel.BackgroundColor = [0.6588 0.8588 1];
            app.NGUYNMINHVNGLabel.HorizontalAlignment = 'center';
            app.NGUYNMINHVNGLabel.FontName = 'Dubai';
            app.NGUYNMINHVNGLabel.FontWeight = 'bold';
            app.NGUYNMINHVNGLabel.Position = [372 22 296 50];
            app.NGUYNMINHVNGLabel.Text = 'NGUYỄN MINH VƯỢNG';

            % Show the figure after all components are created
            app.ConBoCon.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = project_team_update

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.ConBoCon)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.ConBoCon)
        end
    end
end
