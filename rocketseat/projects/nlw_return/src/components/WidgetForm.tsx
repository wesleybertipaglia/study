import { CloseButton } from "./CloseButton";

import bugImageUrl from '../assets/orange.svg'
import ideiaImageUrl from '../assets/yellow.svg'
import outroImageUrl from '../assets/blue.svg'

const feedbackTypes = {
    BUG: {
        title: 'Problema',
        image: {
            source: bugImageUrl,
            alt: 'Bola laranja'
        }
    },
    IDEA: {
        title: 'Ideia',
        image: {
            source: ideiaImageUrl,
            alt: 'Bola Amarela'
        }
    },
    OTHER: {
        title: 'Outro',
        image: {
            source: outroImageUrl,
            alt: 'Bola Azul'
        }
    }
}

type feedbackType = keyof typeof feedbackTypes

export function WidgetForm() {
    const [feedbackType, setFeedbackType] = useState<feedbackType | null>(null)

    return (
        <div className="bg-zinc-900 p-4 relative rounded-2xl flex flex-col items-center shadow-lg w-[calc(100vw-2rem)] md:w-auto">
            <header>
                <span className="text-xl leading-6">Deixe seu feedback</span>
                <CloseButton />
            </header>

            <div className="flex py-8 gap-2 w-full">
                {Object.entries(feedbackTypes).map(([key, value]) => {
                    return (
                        <button
                            key={key}
                            className="bg-zinc-800 rounded-lg py-5 w-24 flex-1 flex flex-col items-center gap-2 border-2 border-transparent hover:border-brand-500 focus:border-brand-500 focus:outline-none"
                            onClick={() => setFeedbackType(key as feedbackType)}
                            type="button"
                        >
                            <img src="{value.image.source}" alt="{value.image.alt}" />
                            <span>{value.title}</span>
                        </button>
                    )
                }
                )}
            </div>

            <footer className="text-xs text-neutral-400">
                Feito pelo <a href="#" className="underline underline-offset-1">Wesley</a>
            </footer>
        </div>
    )
}