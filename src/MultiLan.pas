////////////////////////////////////////////////////////////////////////////////
//
//
//  FileName    :   MultiLan.pas
//  Creator     :   Shen Min
//  Date        :   2002-4-3
//  Comment     :   MultiLanguage support
//
//
////////////////////////////////////////////////////////////////////////////////

unit MultiLan;

interface

Type
    LanguageType = (LT_English, LT_Chinese);

const
    English_NoTitle         = 'No Tilte';
    Chinese_NoTitle         = '�ޱ���';

    English_PromptSave      = 'Save changes?';
    Chinese_PromptSave      = '���ļ����޸Ĺ����Ƿ񱣴棿';

    English_SaveError       = 'Save file failed, maybe it''s read only';
    Chinese_SaveError       = '�����ļ�ʧ�ܣ��������ڸ��ļ�Ϊֻ���ļ�';

    English_LoadError       = 'The file can''t be opened : %s';
    Chinese_LoadError       = '�� %s �ļ�ʧ��';

    English_NotFindText     = 'Sorry, can''t find string "%s"';
    Chinese_NotFindText     = '��Ǹ��û���ҵ� ��%s��';

    English_ReplacedAll     = '%d occurrences have been replaced';
    Chinese_ReplacedAll     = '%d ���ѱ��滻';

    English_CountResult     = 'WordCount Result: ';
    Chinese_CountResult     = '����ͳ�ƽ����';

    English_AnsiChar        = 'Ansi character: ';
    Chinese_AnsiChar        = 'Ӣ���ַ���';

    English_MultiChar       = 'Multibyte character: ';
    Chinese_MultiChar       = '�����ַ���';

    English_NumChar         = 'Numeric character: ';
    Chinese_NumChar         = '�����ַ���';

    English_OtherChar       = 'Other character: ';
    Chinese_OtherChar       = '�����ַ���';

var
    str_NoTitle,
    str_PromptSave,
    str_SaveError,
    str_LoadError,
    str_NotFindText,
    str_ReplacedAll,
    str_CountResult,
    str_AnsiChar,
    str_MultiChar,
    str_NumChar,
    str_OtherChar : PChar;

implementation

procedure InitLanguage(Language : LanguageType);
begin
    if Language = LT_Chinese then
    begin
        str_NoTitle         := Chinese_NoTitle;
        str_PromptSave      := Chinese_PromptSave;
        str_SaveError       := Chinese_SaveError;
        str_LoadError       := Chinese_LoadError;
        str_NotFindText     := Chinese_NotFindText;
        str_ReplacedAll     := Chinese_ReplacedAll;
        str_CountResult     := Chinese_CountResult;
        str_AnsiChar        := Chinese_AnsiChar;
        str_MultiChar       := Chinese_MultiChar;
        str_NumChar         := Chinese_NumChar;
        str_OtherChar       := Chinese_OtherChar;
    end
    else // default is English
    begin
        str_NoTitle         := English_NoTitle;
        str_PromptSave      := English_PromptSave;
        str_SaveError       := English_SaveError;
        str_LoadError       := English_LoadError;
        str_NotFindText     := English_NotFindText;
        str_ReplacedAll     := English_ReplacedAll;
        str_CountResult     := English_CountResult;
        str_AnsiChar        := English_AnsiChar;
        str_MultiChar       := English_MultiChar;
        str_NumChar         := English_NumChar;
        str_OtherChar       := English_OtherChar;
    end;
end;


initialization
    {$IFDEF _CHS}
    InitLanguage(LT_Chinese);
    {$ELSE}
    InitLanguage(LT_English);
    {$ENDIF}


end.
