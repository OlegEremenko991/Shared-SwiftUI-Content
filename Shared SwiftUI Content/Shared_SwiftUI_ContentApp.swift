import SwiftUI

@main
struct Shared_SwiftUI_ContentApp: App {
    var body: some Scene {
        WindowGroup {
            let textWithHTML = """
        <h1>Привет!</h1><p><b>Меня зовут Олег, я руковожу дизайн-направлением Samokat.tech</b><em>.</em> За последние пару лет наша команда выросла в 10 раз и стала одним из крупнейших департаментов компании.&nbsp;</p><p><u><b>Подобные темпы масштабирования неизбежно приводят к потребности быстро и сильно меняться: оптимизировать процессы, пересматривать методики и принципы управления. Необходимо постоянно наращивать скорость работы, не теряя в качестве, и пересобирать структуру, сохраняя лояльность команды. В этой статье я поделюсь тем, как мы решали эти задачи.&nbsp;</b></u></p><ul><li>Надеюсь, мой рассказ будет полезен дизайнерам и руководителям,</li><li><a href=\"https://habr.com\"><b>которые находятся на пороге или в процессе больших перемен.</b></a></li><li>Они смогут сравнить наш опыт со своим и найти для себя пару-тройку инсайтов.&nbsp;</li></ul><h2><a href=\"https://habr.com/ru/companies/samokat_tech/articles/788972/\"><em>О каком дизайне идёт речь</em></a></h2><p>Дизайн в<u><em> ИТ нередко выполняет сервисные функции</em></u>. Он по сути обслуживает бизнес как повар в ресторане,&nbsp;производя на заказ «блюда» из стандартного меню: интерфейсы, брендинг, маркетинговые материалы. Часто в структурах компаний нет отдельного дизайн-департамента, а специалисты являются частью продуктовых или коммуникационных команд.&nbsp;</p><p><u>Наш подход — другой. Для нас дизайнер — это скорее инженер, изобретатель. Человек, способный системно мыслить и </u><a href=\"https://habr.com\">преобразовывать мир вокруг себя, создавая что-то новое из ничего.</a></p><h3>На практике это</h3><ul><li>означает что мы не ограничиваем себя в том, чтобы искать решения для задач в самых разных областях методами дизайна. Чем быстрее растёт бизнес — тем выше число таких задач, тем больше направлений для нашей работы. <a href=\"https://habr.com\"><u>Именно так появляются новые практики.</u></a></li></ul>
        """
            ScrollView {
                HTMLTextViewExample(
                    text: textWithHTML,
                    maxLayoutWidth: UIScreen.main.bounds.width - 40,
                    configuration: { uiView in
                        uiView.textColor = .purple
                        uiView.isScrollEnabled = false
                        uiView.linkTextAttributes = [.foregroundColor: UIColor.systemGreen]
                        uiView.font = .systemFont(ofSize: 20)
                    }
                )
                .padding(.horizontal, 20)
            }
        }
    }
}
