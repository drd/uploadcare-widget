# Note: English locale is the default and used as a fallback.
uploadcare.namespace 'uploadcare.locale.translations', (ns) ->
  ns.he =
    uploading: 'טוען... אנא המתן.'
    loadingInfo: 'טוען מידע...'
    errors:
      default: 'שגיאה'
      baddata: 'ערך שגוי'
      size: 'קובץ גדול מידי'
      upload: 'לא ניתן להעלות'
      user: 'העלאה בוטלה'
      info: 'לא ניתן לטעון מידע'
      image: 'ניתן להעלות רק תמונות'
      createGroup: 'לא ניתן ליצור קבוצה'
      deleted: 'הקובץ נמחק'
    draghere: 'שחרר כאן קובץ'
    file:
      one: 'קובץ %1'
      other: '%1 קבצים'
    buttons:
      cancel: 'ביטול'
      remove: 'הסר'
      choose:
        files:
          one: 'בחר קובץ'
          other: 'בחר קבצים'
        images:
          one: 'בחר תמונה'
          other: 'בחר תמונות'
    dialog:
      done: 'סיום'
      showFiles: 'הצג קבצים'
      tabs:
        file:
          drag: 'שחרר כאן קובץ'
          nodrop: 'העלה קבצים מהמחשב'
          or: 'או'
          button: 'בחר קובץ מהמחשב'
          also: 'ניתן לבחור גם מ'
          tabNames:
            facebook: 'פייסבוק'
            dropbox: 'דרופבוקס'
            gdrive: 'כונן גוגל'
            instagram: 'אינסטגרם'
            vk: 'VK'
            evernote: 'Evernote'
            box: 'Box'
            skydrive: 'SkyDrive'
            url: 'לינק מהאינטרנט'
        url:
          title: 'קובץ מהאינטרנט'
          line1: 'גרור קובץ מהאינטרנט'
          line2: 'ספק את כתובת הקובץ'
          input: 'הדבק את כתובת הקובץ...'
          button: 'העלה'
        preview:
          unknownName: 'לא ידוע'
          change: 'ביטול'
          back: 'חזרה'
          done: 'הוסף'
          unknown:
            title: 'מעלה... נא המתן לתצוגה מקדימה.'
            done: 'דלג על תצוגה מקדימה'
          regular:
            title: 'להוסיף קובץ זה?'
            line1: 'קובץ זה יועלה'
            line2: 'נא אשר.'
          image:
            title: 'להוסיף תמונה זו?'
            change: 'ביטול'
          crop:
            title: 'חתוך והוסף תמונה זו'
            done: 'סיום'
          error:
            default:
              title: 'אופס!'
              text: 'משהו השתבש בזמן ההעלאה.'
              back: 'נא נסה שוב'
            image:
              title: 'ניתן לקבל רק קבצי תמונות.'
              text: 'נא נסה שוב עם קובץ אחר.'
              back: 'בחר תמונה'
            size:
              title: 'הקובץ שבחרת חורג מהגבול.'
              text: 'נא נסה שוב עם קובץ אחר.'
          multiple:
            title: 'בחרת %files%'
            question: 'אתה מעוניין להוסיף את כל הקבצים האלו?'
            tooManyFiles: 'בחרת יותר מידי קבצים. יש לבחור מקסימום %max% קבצים.'
            tooFewFiles: 'בחרת %files%. יש לבחור לפחות %min%.'
            clear: 'הסר הכל'
            done: 'סיום'
      footer:
        text: 'העלאה, מיון ועיבוד קבצים על ידי'
        link: 'Uploadcare.com'
    crop:
      error:
        title: 'שגיאה'
        text: 'טעינת התמונה נכשלה'
      done: 'סיום'


# Pluralization rules taken from:
# http://unicode.org/repos/cldr-tmp/trunk/diff/supplemental/language_plural_rules.html
uploadcare.namespace 'uploadcare.locale.pluralize', (ns) ->
  ns.he = (n) ->
    return 'one' if n == 1
    'other'
