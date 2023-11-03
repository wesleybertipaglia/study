import React, { useState } from 'react'
import NLWLogo from '../src/assets/nlw-spacetime-logo.svg'
import {
  Text,
  View,
  TouchableOpacity,
  Switch,
  TextInput,
  ScrollView,
} from 'react-native'
import { Link } from 'expo-router'
import Icon from '@expo/vector-icons/Feather'
import { useSafeAreaInsets } from 'react-native-safe-area-context'

export default function NewMemory() {
  const { bottom, top } = useSafeAreaInsets()
  const [isPublic, setIsPublic] = useState(false)

  return (
    <ScrollView
      className="flex-1 px-8"
      contentContainerStyle={{ paddingBottom: bottom, paddingTop: top }}
    >
      <View className="my-4 flex-row items-center justify-between">
        <NLWLogo />

        <Link href="/memories" asChild>
          <TouchableOpacity className="h-10 w-10 items-center justify-center rounded-full bg-purple-400">
            <Icon name="arrow-left" />
          </TouchableOpacity>
        </Link>
      </View>

      <View className="space-y-4">
        <View className="flex-row items-center gap-2">
          <Switch
            value={isPublic}
            onValueChange={setIsPublic}
            trackColor={{ false: '#fafafa', true: '#fafafa' }}
            thumbColor={isPublic ? '#9b79ea' : '#9e9e9e'}
          />

          <Text className="font-body text-base text-gray-200">
            Tornar memoria publica
          </Text>
        </View>

        <TouchableOpacity
          activeOpacity={0.75}
          className="h-32 items-center justify-center rounded-lg border border-dashed border-gray-500 bg-black/20"
        >
          <View className="flex-row items-center gap-2">
            <Icon name="image" color="#fafafa" />
            <Text className="font-body text-sm text-gray-200">
              Adicionar foto ou video de capa
            </Text>
          </View>
        </TouchableOpacity>

        <TextInput
          multiline
          className="p-0 font-body text-lg text-gray-50"
          placeholderTextColor={'#56565a'}
          placeholder="Fique livre para adicionar fotos, vídeos e relatos sobre essa experiência que você quer lembrar para sempre."
        />

        <TouchableOpacity
          activeOpacity={0.7}
          className="items-center self-end rounded-full bg-green-500 px-5 py-2"
          onPress={() => signInWithGithub()}
        >
          <Text className="font-alt text-sm uppercase text-black">Salvar</Text>
        </TouchableOpacity>
      </View>
    </ScrollView>
  )
}
